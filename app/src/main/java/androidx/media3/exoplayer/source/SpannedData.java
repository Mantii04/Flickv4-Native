package androidx.media3.exoplayer.source;

import P3.v;
import android.util.SparseArray;
import androidx.media3.common.util.Consumer;

/* loaded from: classes.dex */
final class SpannedData<V> {
    private int memoizedReadIndex;
    private final Consumer<V> removeCallback;
    private final SparseArray<V> spans;

    public SpannedData() {
        this(new p(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(Object obj) {
    }

    public void appendSpan(int i2, V v6) {
        if (this.memoizedReadIndex == -1) {
            v.checkState(this.spans.size() == 0);
            this.memoizedReadIndex = 0;
        }
        if (this.spans.size() > 0) {
            SparseArray<V> sparseArray = this.spans;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            v.checkArgument(i2 >= keyAt);
            if (keyAt == i2) {
                Consumer<V> consumer = this.removeCallback;
                SparseArray<V> sparseArray2 = this.spans;
                consumer.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.spans.append(i2, v6);
    }

    public void clear() {
        for (int i2 = 0; i2 < this.spans.size(); i2++) {
            this.removeCallback.accept(this.spans.valueAt(i2));
        }
        this.memoizedReadIndex = -1;
        this.spans.clear();
    }

    public void discardFrom(int i2) {
        for (int size = this.spans.size() - 1; size >= 0 && i2 < this.spans.keyAt(size); size--) {
            this.removeCallback.accept(this.spans.valueAt(size));
            this.spans.removeAt(size);
        }
        this.memoizedReadIndex = this.spans.size() > 0 ? Math.min(this.memoizedReadIndex, this.spans.size() - 1) : -1;
    }

    public void discardTo(int i2) {
        int i7 = 0;
        while (i7 < this.spans.size() - 1) {
            int i8 = i7 + 1;
            if (i2 < this.spans.keyAt(i8)) {
                return;
            }
            this.removeCallback.accept(this.spans.valueAt(i7));
            this.spans.removeAt(i7);
            int i9 = this.memoizedReadIndex;
            if (i9 > 0) {
                this.memoizedReadIndex = i9 - 1;
            }
            i7 = i8;
        }
    }

    public V get(int i2) {
        if (this.memoizedReadIndex == -1) {
            this.memoizedReadIndex = 0;
        }
        while (true) {
            int i7 = this.memoizedReadIndex;
            if (i7 <= 0 || i2 >= this.spans.keyAt(i7)) {
                break;
            }
            this.memoizedReadIndex--;
        }
        while (this.memoizedReadIndex < this.spans.size() - 1 && i2 >= this.spans.keyAt(this.memoizedReadIndex + 1)) {
            this.memoizedReadIndex++;
        }
        return this.spans.valueAt(this.memoizedReadIndex);
    }

    public V getEndValue() {
        return this.spans.valueAt(r0.size() - 1);
    }

    public boolean isEmpty() {
        return this.spans.size() == 0;
    }

    public SpannedData(Consumer<V> consumer) {
        this.spans = new SparseArray<>();
        this.removeCallback = consumer;
        this.memoizedReadIndex = -1;
    }
}
