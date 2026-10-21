package androidx.media3.common.util;

import P3.v;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.FlagSet;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

@UnstableApi
/* loaded from: classes.dex */
public final class ListenerSet<T> {
    private static final int MSG_ITERATION_FINISHED = 1;
    private final Clock clock;
    private final ArrayDeque<Runnable> flushingEvents;
    private final IterationFinishedEvent<T> iterationFinishedEvent;
    private final HandlerWrapper iterationFinishedHandler;
    private final CopyOnWriteArraySet<ListenerHolder<T>> listeners;
    private final ArrayDeque<Runnable> queuedEvents;
    private boolean released;
    private final Object releasedLock;
    private final Thread thread;
    private boolean throwsWhenUsingWrongThread;

    public interface Event<T> {
        void invoke(T t6);
    }

    public interface IterationFinishedEvent<T> {
        void invoke(T t6, FlagSet flagSet);
    }

    public static final class ListenerHolder<T> {
        private FlagSet.Builder flagsBuilder = new FlagSet.Builder();
        public final T listener;
        private boolean needsIterationFinishedEvent;
        private boolean released;

        public ListenerHolder(T t6) {
            this.listener = t6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release(IterationFinishedEvent<T> iterationFinishedEvent) {
            this.released = true;
            if (iterationFinishedEvent == null || !this.needsIterationFinishedEvent) {
                return;
            }
            this.needsIterationFinishedEvent = false;
            iterationFinishedEvent.invoke(this.listener, this.flagsBuilder.build());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((ListenerHolder) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public void invoke(int i2, Event<T> event) {
            if (this.released) {
                return;
            }
            if (i2 != -1) {
                this.flagsBuilder.add(i2);
            }
            this.needsIterationFinishedEvent = true;
            event.invoke(this.listener);
        }

        public void iterationFinished(IterationFinishedEvent<T> iterationFinishedEvent) {
            if (this.released || !this.needsIterationFinishedEvent) {
                return;
            }
            FlagSet build = this.flagsBuilder.build();
            this.flagsBuilder = new FlagSet.Builder();
            this.needsIterationFinishedEvent = false;
            iterationFinishedEvent.invoke(this.listener, build);
        }
    }

    public ListenerSet(Looper looper) {
        this(looper.getThread());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        IterationFinishedEvent<T> iterationFinishedEvent = (IterationFinishedEvent) v.checkNotNull(this.iterationFinishedEvent);
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().iterationFinished(iterationFinishedEvent);
            if (((HandlerWrapper) v.checkNotNull(this.iterationFinishedHandler)).hasMessages(1)) {
                break;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$queueEvent$0(CopyOnWriteArraySet copyOnWriteArraySet, int i2, Event event) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((ListenerHolder) it.next()).invoke(i2, event);
        }
    }

    private void verifyCurrentThread() {
        if (this.throwsWhenUsingWrongThread) {
            v.checkState(Thread.currentThread() == this.thread);
        }
    }

    public void add(T t6) {
        v.checkNotNull(t6);
        synchronized (this.releasedLock) {
            try {
                if (this.released) {
                    return;
                }
                this.listeners.add(new ListenerHolder<>(t6));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clear() {
        verifyCurrentThread();
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    public ListenerSet<T> copy(Looper looper, IterationFinishedEvent<T> iterationFinishedEvent) {
        return copy(looper, this.clock, iterationFinishedEvent);
    }

    public void flushEvents() {
        verifyCurrentThread();
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (this.iterationFinishedEvent != null && !((HandlerWrapper) v.checkNotNull(this.iterationFinishedHandler)).hasMessages(1)) {
            HandlerWrapper handlerWrapper = this.iterationFinishedHandler;
            handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(1));
        }
        boolean isEmpty = this.flushingEvents.isEmpty();
        this.flushingEvents.addAll(this.queuedEvents);
        this.queuedEvents.clear();
        if (isEmpty) {
            while (!this.flushingEvents.isEmpty()) {
                this.flushingEvents.peekFirst().run();
                this.flushingEvents.removeFirst();
            }
        }
    }

    public void queueEvent(Event<T> event) {
        queueEvent(-1, event);
    }

    public void release() {
        verifyCurrentThread();
        synchronized (this.releasedLock) {
            this.released = true;
        }
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    public void remove(T t6) {
        verifyCurrentThread();
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            ListenerHolder<T> next = it.next();
            if (next.listener.equals(t6)) {
                next.release(this.iterationFinishedEvent);
                this.listeners.remove(next);
            }
        }
    }

    public void sendEvent(Event<T> event) {
        sendEvent(-1, event);
    }

    @Deprecated
    public void setThrowsWhenUsingWrongThread(boolean z6) {
        this.throwsWhenUsingWrongThread = z6;
    }

    public int size() {
        verifyCurrentThread();
        return this.listeners.size();
    }

    public ListenerSet(Thread thread) {
        this(new CopyOnWriteArraySet(), null, thread, null, null, true);
    }

    public ListenerSet<T> copy(Looper looper) {
        return copy(looper, this.clock, this.iterationFinishedEvent);
    }

    public void queueEvent(int i2, Event<T> event) {
        verifyCurrentThread();
        this.queuedEvents.add(new d(new CopyOnWriteArraySet(this.listeners), i2, event, 0));
    }

    public void sendEvent(int i2, Event<T> event) {
        queueEvent(i2, event);
        flushEvents();
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, looper.getThread(), clock, iterationFinishedEvent, true);
    }

    public ListenerSet<T> copy(Clock clock) {
        HandlerWrapper handlerWrapper = this.iterationFinishedHandler;
        if (handlerWrapper != null) {
            return copy(handlerWrapper.getLooper(), clock, this.iterationFinishedEvent);
        }
        return new ListenerSet<>(this.listeners, null, this.thread, clock, null, this.throwsWhenUsingWrongThread);
    }

    private ListenerSet(CopyOnWriteArraySet<ListenerHolder<T>> copyOnWriteArraySet, Looper looper, Thread thread, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent, boolean z6) {
        this.clock = clock;
        this.thread = thread;
        this.listeners = copyOnWriteArraySet;
        this.iterationFinishedEvent = iterationFinishedEvent;
        this.releasedLock = new Object();
        this.flushingEvents = new ArrayDeque<>();
        this.queuedEvents = new ArrayDeque<>();
        if (looper != null && clock != null && iterationFinishedEvent != null) {
            this.iterationFinishedHandler = clock.createHandler(looper, new c(this, 0));
        } else {
            this.iterationFinishedHandler = null;
        }
        this.throwsWhenUsingWrongThread = z6;
    }

    public ListenerSet<T> copy(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        v.checkState(clock != null || iterationFinishedEvent == null);
        return new ListenerSet<>(this.listeners, looper, looper.getThread(), clock, iterationFinishedEvent, this.throwsWhenUsingWrongThread);
    }
}
