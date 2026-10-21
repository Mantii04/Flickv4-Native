package org.apache.commons.lang3.concurrent;

import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;

/* loaded from: classes2.dex */
public class EventCountCircuitBreaker extends AbstractCircuitBreaker<Integer> {
    private static final Map<AbstractCircuitBreaker.State, StateStrategy> STRATEGY_MAP = createStrategyMap();
    private final AtomicReference<CheckIntervalData> checkIntervalData;
    private final long closingInterval;
    private final int closingThreshold;
    private final long openingInterval;
    private final int openingThreshold;

    public static class CheckIntervalData {
        private final long checkIntervalStart;
        private final int eventCount;

        public CheckIntervalData(int i2, long j7) {
            this.eventCount = i2;
            this.checkIntervalStart = j7;
        }

        public long getCheckIntervalStart() {
            return this.checkIntervalStart;
        }

        public int getEventCount() {
            return this.eventCount;
        }

        public CheckIntervalData increment(int i2) {
            return i2 == 0 ? this : new CheckIntervalData(getEventCount() + i2, getCheckIntervalStart());
        }
    }

    public static abstract class StateStrategy {
        private StateStrategy() {
        }

        public abstract long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker);

        public boolean isCheckIntervalFinished(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, long j7) {
            return j7 - checkIntervalData.getCheckIntervalStart() > fetchCheckInterval(eventCountCircuitBreaker);
        }

        public abstract boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2);
    }

    public static class StateStrategyClosed extends StateStrategy {
        private StateStrategyClosed() {
            super();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.StateStrategy
        public long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getOpeningInterval();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.StateStrategy
        public boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
            return checkIntervalData2.getEventCount() > eventCountCircuitBreaker.getOpeningThreshold();
        }
    }

    public static class StateStrategyOpen extends StateStrategy {
        private StateStrategyOpen() {
            super();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.StateStrategy
        public long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getClosingInterval();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.StateStrategy
        public boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
            return checkIntervalData2.getCheckIntervalStart() != checkIntervalData.getCheckIntervalStart() && checkIntervalData.getEventCount() < eventCountCircuitBreaker.getClosingThreshold();
        }
    }

    public EventCountCircuitBreaker(int i2, long j7, TimeUnit timeUnit, int i7, long j8, TimeUnit timeUnit2) {
        this.checkIntervalData = new AtomicReference<>(new CheckIntervalData(0, 0L));
        this.openingThreshold = i2;
        this.openingInterval = timeUnit.toNanos(j7);
        this.closingThreshold = i7;
        this.closingInterval = timeUnit2.toNanos(j8);
    }

    private void changeStateAndStartNewCheckInterval(AbstractCircuitBreaker.State state) {
        changeState(state);
        this.checkIntervalData.set(new CheckIntervalData(0, now()));
    }

    private static Map<AbstractCircuitBreaker.State, StateStrategy> createStrategyMap() {
        EnumMap enumMap = new EnumMap(AbstractCircuitBreaker.State.class);
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.CLOSED, (AbstractCircuitBreaker.State) new StateStrategyClosed());
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.OPEN, (AbstractCircuitBreaker.State) new StateStrategyOpen());
        return enumMap;
    }

    private CheckIntervalData nextCheckIntervalData(int i2, CheckIntervalData checkIntervalData, AbstractCircuitBreaker.State state, long j7) {
        return stateStrategy(state).isCheckIntervalFinished(this, checkIntervalData, j7) ? new CheckIntervalData(i2, j7) : checkIntervalData.increment(i2);
    }

    private boolean performStateCheck(int i2) {
        AbstractCircuitBreaker.State state;
        CheckIntervalData checkIntervalData;
        CheckIntervalData nextCheckIntervalData;
        while (true) {
            long now = now();
            state = this.state.get();
            checkIntervalData = this.checkIntervalData.get();
            int i7 = i2;
            nextCheckIntervalData = nextCheckIntervalData(i7, checkIntervalData, state, now);
            if (updateCheckIntervalData(checkIntervalData, nextCheckIntervalData)) {
                break;
            }
            i2 = i7;
        }
        if (stateStrategy(state).isStateTransition(this, checkIntervalData, nextCheckIntervalData)) {
            state = state.oppositeState();
            changeStateAndStartNewCheckInterval(state);
        }
        return !AbstractCircuitBreaker.isOpen(state);
    }

    private static StateStrategy stateStrategy(AbstractCircuitBreaker.State state) {
        return STRATEGY_MAP.get(state);
    }

    private boolean updateCheckIntervalData(CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
        if (checkIntervalData == checkIntervalData2) {
            return true;
        }
        AtomicReference<CheckIntervalData> atomicReference = this.checkIntervalData;
        while (!atomicReference.compareAndSet(checkIntervalData, checkIntervalData2)) {
            if (atomicReference.get() != checkIntervalData) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean checkState() {
        return performStateCheck(0);
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public void close() {
        super.close();
        this.checkIntervalData.set(new CheckIntervalData(0, now()));
    }

    public long getClosingInterval() {
        return this.closingInterval;
    }

    public int getClosingThreshold() {
        return this.closingThreshold;
    }

    public long getOpeningInterval() {
        return this.openingInterval;
    }

    public int getOpeningThreshold() {
        return this.openingThreshold;
    }

    public long now() {
        return System.nanoTime();
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public void open() {
        super.open();
        this.checkIntervalData.set(new CheckIntervalData(0, now()));
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean incrementAndCheckState(Integer num) {
        return performStateCheck(num.intValue());
    }

    public boolean incrementAndCheckState() {
        return incrementAndCheckState((Integer) 1);
    }

    public EventCountCircuitBreaker(int i2, long j7, TimeUnit timeUnit, int i7) {
        this(i2, j7, timeUnit, i7, j7, timeUnit);
    }

    public EventCountCircuitBreaker(int i2, long j7, TimeUnit timeUnit) {
        this(i2, j7, timeUnit, i2);
    }
}
