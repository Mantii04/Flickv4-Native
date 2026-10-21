package io.reactivex.observers;

import A.i;
import io.reactivex.Notification;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.BaseTestConsumer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements Disposable {
    protected boolean checkSubscriptionOnce;
    protected long completions;
    protected int establishedFusionMode;
    protected int initialFusionMode;
    protected Thread lastThread;
    protected CharSequence tag;
    protected boolean timeout;
    protected final List<T> values = new VolatileSizeArrayList();
    protected final List<Throwable> errors = new VolatileSizeArrayList();
    protected final CountDownLatch done = new CountDownLatch(1);

    public enum TestWaitStrategy implements Runnable {
        SPIN { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.1
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
            }
        },
        YIELD { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.2
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        },
        SLEEP_1MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.3
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1);
            }
        },
        SLEEP_10MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.4
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(10);
            }
        },
        SLEEP_100MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.5
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(100);
            }
        },
        SLEEP_1000MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.6
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1000);
            }
        };

        public static void sleep(int i2) {
            try {
                Thread.sleep(i2);
            } catch (InterruptedException e3) {
                throw new RuntimeException(e3);
            }
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }

    public static String valueAndClass(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj + " (class: " + obj.getClass().getSimpleName() + ")";
    }

    public final U assertComplete() {
        long j7 = this.completions;
        if (j7 == 0) {
            throw fail("Not completed");
        }
        if (j7 <= 1) {
            return this;
        }
        throw fail("Multiple completions: " + j7);
    }

    public final U assertEmpty() {
        return (U) assertSubscribed().assertNoValues().assertNoErrors().assertNotComplete();
    }

    public final U assertError(Throwable th) {
        return assertError(Functions.equalsWith(th));
    }

    public final U assertErrorMessage(String str) {
        int size = this.errors.size();
        if (size == 0) {
            throw fail("No errors");
        }
        if (size != 1) {
            throw fail("Multiple errors");
        }
        String message = this.errors.get(0).getMessage();
        if (ObjectHelper.equals(str, message)) {
            return this;
        }
        throw fail("Error message differs; exptected: " + str + " but was: " + message);
    }

    public final U assertFailure(Class<? extends Throwable> cls, T... tArr) {
        return (U) assertSubscribed().assertValues(tArr).assertError(cls).assertNotComplete();
    }

    public final U assertFailureAndMessage(Class<? extends Throwable> cls, String str, T... tArr) {
        return (U) assertSubscribed().assertValues(tArr).assertError(cls).assertErrorMessage(str).assertNotComplete();
    }

    public final U assertNever(T t6) {
        int size = this.values.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (ObjectHelper.equals(this.values.get(i2), t6)) {
                StringBuilder q6 = i.q(i2, "Value at position ", " is equal to ");
                q6.append(valueAndClass(t6));
                q6.append("; Expected them to be different");
                throw fail(q6.toString());
            }
        }
        return this;
    }

    public final U assertNoErrors() {
        if (this.errors.size() == 0) {
            return this;
        }
        throw fail("Error(s) present: " + this.errors);
    }

    public final U assertNoTimeout() {
        if (this.timeout) {
            throw fail("Timeout?!");
        }
        return this;
    }

    public final U assertNoValues() {
        return assertValueCount(0);
    }

    public final U assertNotComplete() {
        long j7 = this.completions;
        if (j7 == 1) {
            throw fail("Completed!");
        }
        if (j7 <= 1) {
            return this;
        }
        throw fail("Multiple completions: " + j7);
    }

    public abstract U assertNotSubscribed();

    public final U assertNotTerminated() {
        if (this.done.getCount() != 0) {
            return this;
        }
        throw fail("Subscriber terminated!");
    }

    public final U assertResult(T... tArr) {
        return (U) assertSubscribed().assertValues(tArr).assertNoErrors().assertComplete();
    }

    public abstract U assertSubscribed();

    public final U assertTerminated() {
        if (this.done.getCount() != 0) {
            throw fail("Subscriber still running!");
        }
        long j7 = this.completions;
        if (j7 > 1) {
            throw fail("Terminated with multiple completions: " + j7);
        }
        int size = this.errors.size();
        if (size > 1) {
            throw fail("Terminated with multiple errors: " + size);
        }
        if (j7 == 0 || size == 0) {
            return this;
        }
        throw fail("Terminated with multiple completions and errors: " + j7);
    }

    public final U assertTimeout() {
        if (this.timeout) {
            return this;
        }
        throw fail("No timeout?!");
    }

    public final U assertValue(T t6) {
        if (this.values.size() != 1) {
            throw fail("expected: " + valueAndClass(t6) + " but was: " + this.values);
        }
        T t7 = this.values.get(0);
        if (ObjectHelper.equals(t6, t7)) {
            return this;
        }
        throw fail("expected: " + valueAndClass(t6) + " but was: " + valueAndClass(t7));
    }

    public final U assertValueAt(int i2, T t6) {
        int size = this.values.size();
        if (size == 0) {
            throw fail("No values");
        }
        if (i2 >= size) {
            throw fail("Invalid index: " + i2);
        }
        T t7 = this.values.get(i2);
        if (ObjectHelper.equals(t6, t7)) {
            return this;
        }
        throw fail("expected: " + valueAndClass(t6) + " but was: " + valueAndClass(t7));
    }

    public final U assertValueCount(int i2) {
        int size = this.values.size();
        if (size == i2) {
            return this;
        }
        throw fail("Value counts differ; expected: " + i2 + " but was: " + size);
    }

    public final U assertValueSequence(Iterable<? extends T> iterable) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it = this.values.iterator();
        Iterator<? extends T> it2 = iterable.iterator();
        int i2 = 0;
        while (true) {
            hasNext = it2.hasNext();
            hasNext2 = it.hasNext();
            if (!hasNext2 || !hasNext) {
                break;
            }
            T next = it2.next();
            T next2 = it.next();
            if (!ObjectHelper.equals(next, next2)) {
                StringBuilder q6 = i.q(i2, "Values at position ", " differ; expected: ");
                q6.append(valueAndClass(next));
                q6.append(" but was: ");
                q6.append(valueAndClass(next2));
                throw fail(q6.toString());
            }
            i2++;
        }
        if (hasNext2) {
            throw fail("More values received than expected (" + i2 + ")");
        }
        if (!hasNext) {
            return this;
        }
        throw fail("Fewer values received than expected (" + i2 + ")");
    }

    public final U assertValueSequenceOnly(Iterable<? extends T> iterable) {
        return (U) assertSubscribed().assertValueSequence(iterable).assertNoErrors().assertNotComplete();
    }

    public final U assertValueSet(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            assertNoValues();
            return this;
        }
        for (T t6 : this.values) {
            if (!collection.contains(t6)) {
                throw fail("Value not in the expected collection: " + valueAndClass(t6));
            }
        }
        return this;
    }

    public final U assertValueSetOnly(Collection<? extends T> collection) {
        return (U) assertSubscribed().assertValueSet(collection).assertNoErrors().assertNotComplete();
    }

    public final U assertValues(T... tArr) {
        int size = this.values.size();
        if (size != tArr.length) {
            throw fail("Value count differs; expected: " + tArr.length + StringUtils.SPACE + Arrays.toString(tArr) + " but was: " + size + StringUtils.SPACE + this.values);
        }
        for (int i2 = 0; i2 < size; i2++) {
            T t6 = this.values.get(i2);
            T t7 = tArr[i2];
            if (!ObjectHelper.equals(t7, t6)) {
                StringBuilder q6 = i.q(i2, "Values at position ", " differ; expected: ");
                q6.append(valueAndClass(t7));
                q6.append(" but was: ");
                q6.append(valueAndClass(t6));
                throw fail(q6.toString());
            }
        }
        return this;
    }

    public final U assertValuesOnly(T... tArr) {
        return (U) assertSubscribed().assertValues(tArr).assertNoErrors().assertNotComplete();
    }

    public final U await() throws InterruptedException {
        if (this.done.getCount() == 0) {
            return this;
        }
        this.done.await();
        return this;
    }

    public final U awaitCount(int i2) {
        return awaitCount(i2, TestWaitStrategy.SLEEP_10MS, 5000L);
    }

    public final U awaitDone(long j7, TimeUnit timeUnit) {
        try {
            if (this.done.await(j7, timeUnit)) {
                return this;
            }
            this.timeout = true;
            dispose();
            return this;
        } catch (InterruptedException e3) {
            dispose();
            throw ExceptionHelper.wrapOrThrow(e3);
        }
    }

    public final boolean awaitTerminalEvent() {
        try {
            await();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U clearTimeout() {
        this.timeout = false;
        return this;
    }

    public final long completions() {
        return this.completions;
    }

    public final int errorCount() {
        return this.errors.size();
    }

    public final List<Throwable> errors() {
        return this.errors;
    }

    public final AssertionError fail(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 64);
        sb.append(str);
        sb.append(" (latch = ");
        sb.append(this.done.getCount());
        sb.append(", values = ");
        sb.append(this.values.size());
        sb.append(", errors = ");
        sb.append(this.errors.size());
        sb.append(", completions = ");
        sb.append(this.completions);
        if (this.timeout) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.tag;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.errors.isEmpty()) {
            if (this.errors.size() == 1) {
                assertionError.initCause(this.errors.get(0));
                return assertionError;
            }
            assertionError.initCause(new CompositeException(this.errors));
        }
        return assertionError;
    }

    public final List<List<Object>> getEvents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(values());
        arrayList.add(errors());
        ArrayList arrayList2 = new ArrayList();
        for (long j7 = 0; j7 < this.completions; j7++) {
            arrayList2.add(Notification.createOnComplete());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public final boolean isTerminated() {
        return this.done.getCount() == 0;
    }

    public final boolean isTimeout() {
        return this.timeout;
    }

    public final Thread lastThread() {
        return this.lastThread;
    }

    public final int valueCount() {
        return this.values.size();
    }

    public final List<T> values() {
        return this.values;
    }

    public final U withTag(CharSequence charSequence) {
        this.tag = charSequence;
        return this;
    }

    public final U assertError(Class<? extends Throwable> cls) {
        return assertError(Functions.isInstanceOf(cls));
    }

    public final U awaitCount(int i2, Runnable runnable) {
        return awaitCount(i2, runnable, 5000L);
    }

    public final U assertError(Predicate<Throwable> predicate) {
        int size = this.errors.size();
        if (size != 0) {
            Iterator<Throwable> it = this.errors.iterator();
            while (it.hasNext()) {
                try {
                    if (predicate.test(it.next())) {
                        if (size == 1) {
                            return this;
                        }
                        throw fail("Error present but other errors as well");
                    }
                } catch (Exception e3) {
                    throw ExceptionHelper.wrapOrThrow(e3);
                }
            }
            throw fail("Error not present");
        }
        throw fail("No errors");
    }

    public final boolean await(long j7, TimeUnit timeUnit) throws InterruptedException {
        boolean z6 = this.done.getCount() == 0 || this.done.await(j7, timeUnit);
        this.timeout = !z6;
        return z6;
    }

    public final U awaitCount(int i2, Runnable runnable, long j7) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j7 > 0 && System.currentTimeMillis() - currentTimeMillis >= j7) {
                this.timeout = true;
                return this;
            }
            if (this.done.getCount() != 0 && this.values.size() < i2) {
                runnable.run();
            }
        }
        return this;
    }

    public final boolean awaitTerminalEvent(long j7, TimeUnit timeUnit) {
        try {
            return await(j7, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U assertFailure(Predicate<Throwable> predicate, T... tArr) {
        return (U) assertSubscribed().assertValues(tArr).assertError(predicate).assertNotComplete();
    }

    public final U assertValue(Predicate<T> predicate) {
        assertValueAt(0, (Predicate) predicate);
        if (this.values.size() <= 1) {
            return this;
        }
        throw fail("Value present but other values as well");
    }

    public final U assertValueAt(int i2, Predicate<T> predicate) {
        if (this.values.size() != 0) {
            if (i2 < this.values.size()) {
                try {
                    if (predicate.test(this.values.get(i2))) {
                        return this;
                    }
                    throw fail("Value not present");
                } catch (Exception e3) {
                    throw ExceptionHelper.wrapOrThrow(e3);
                }
            }
            throw fail("Invalid index: " + i2);
        }
        throw fail("No values");
    }

    public final U assertNever(Predicate<? super T> predicate) {
        int size = this.values.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                if (predicate.test(this.values.get(i2))) {
                    throw fail("Value at position " + i2 + " matches predicate " + predicate.toString() + ", which was not expected.");
                }
            } catch (Exception e3) {
                throw ExceptionHelper.wrapOrThrow(e3);
            }
        }
        return this;
    }
}
