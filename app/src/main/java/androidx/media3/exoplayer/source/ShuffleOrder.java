package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;
import java.util.Arrays;
import java.util.Random;

@UnstableApi
/* loaded from: classes.dex */
public interface ShuffleOrder {

    public static class DefaultShuffleOrder implements ShuffleOrder {
        private final int[] indexInShuffled;
        private final Random random;
        private final int[] shuffled;

        public DefaultShuffleOrder(int i2) {
            this(i2, new Random());
        }

        private static int[] createShuffledList(int i2, Random random) {
            int[] iArr = new int[i2];
            int i7 = 0;
            while (i7 < i2) {
                int i8 = i7 + 1;
                int nextInt = random.nextInt(i8);
                iArr[i7] = iArr[nextInt];
                iArr[nextInt] = i7;
                i7 = i8;
            }
            return iArr;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new DefaultShuffleOrder(0, new Random(this.random.nextLong()));
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i2, int i7) {
            int[] iArr = new int[i7];
            int[] iArr2 = new int[i7];
            int i8 = 0;
            int i9 = 0;
            while (i9 < i7) {
                iArr[i9] = this.random.nextInt(this.shuffled.length + 1);
                int i10 = i9 + 1;
                int nextInt = this.random.nextInt(i10);
                iArr2[i9] = iArr2[nextInt];
                iArr2[nextInt] = i9 + i2;
                i9 = i10;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.shuffled.length + i7];
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int[] iArr4 = this.shuffled;
                if (i8 >= iArr4.length + i7) {
                    return new DefaultShuffleOrder(iArr3, new Random(this.random.nextLong()));
                }
                if (i11 >= i7 || i12 != iArr[i11]) {
                    int i13 = i12 + 1;
                    int i14 = iArr4[i12];
                    iArr3[i8] = i14;
                    if (i14 >= i2) {
                        iArr3[i8] = i14 + i7;
                    }
                    i12 = i13;
                } else {
                    iArr3[i8] = iArr2[i11];
                    i11++;
                }
                i8++;
            }
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final /* synthetic */ ShuffleOrder cloneAndMove(int i2, int i7, int i8) {
            return q.a(this, i2, i7, i8);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i2, int i7) {
            int i8 = i7 - i2;
            int[] iArr = new int[this.shuffled.length - i8];
            int i9 = 0;
            int i10 = 0;
            while (true) {
                int[] iArr2 = this.shuffled;
                if (i9 >= iArr2.length) {
                    return new DefaultShuffleOrder(iArr, new Random(this.random.nextLong()));
                }
                int i11 = iArr2[i9];
                if (i11 < i2 || i11 >= i7) {
                    int i12 = i9 - i10;
                    if (i11 >= i2) {
                        i11 -= i8;
                    }
                    iArr[i12] = i11;
                } else {
                    i10++;
                }
                i9++;
            }
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final /* synthetic */ ShuffleOrder cloneAndSet(int i2, int i7) {
            return q.b(this, i2, i7);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getFirstIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getLastIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getLength() {
            return this.shuffled.length;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getNextIndex(int i2) {
            int i7 = this.indexInShuffled[i2] + 1;
            int[] iArr = this.shuffled;
            if (i7 < iArr.length) {
                return iArr[i7];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getPreviousIndex(int i2) {
            int i7 = this.indexInShuffled[i2] - 1;
            if (i7 >= 0) {
                return this.shuffled[i7];
            }
            return -1;
        }

        public DefaultShuffleOrder(int i2, long j7) {
            this(i2, new Random(j7));
        }

        public DefaultShuffleOrder(int[] iArr, long j7) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j7));
        }

        private DefaultShuffleOrder(int i2, Random random) {
            this(createShuffledList(i2, random), random);
        }

        private DefaultShuffleOrder(int[] iArr, Random random) {
            this.shuffled = iArr;
            this.random = random;
            this.indexInShuffled = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                this.indexInShuffled[iArr[i2]] = i2;
            }
        }
    }

    public static final class UnshuffledShuffleOrder implements ShuffleOrder {
        private final int length;

        public UnshuffledShuffleOrder(int i2) {
            this.length = i2;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new UnshuffledShuffleOrder(0);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i2, int i7) {
            return new UnshuffledShuffleOrder(this.length + i7);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final /* synthetic */ ShuffleOrder cloneAndMove(int i2, int i7, int i8) {
            return q.a(this, i2, i7, i8);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i2, int i7) {
            return new UnshuffledShuffleOrder((this.length - i7) + i2);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final /* synthetic */ ShuffleOrder cloneAndSet(int i2, int i7) {
            return q.b(this, i2, i7);
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getFirstIndex() {
            return this.length > 0 ? 0 : -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getLastIndex() {
            int i2 = this.length;
            if (i2 > 0) {
                return i2 - 1;
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getLength() {
            return this.length;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getNextIndex(int i2) {
            int i7 = i2 + 1;
            if (i7 < this.length) {
                return i7;
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public int getPreviousIndex(int i2) {
            int i7 = i2 - 1;
            if (i7 >= 0) {
                return i7;
            }
            return -1;
        }
    }

    ShuffleOrder cloneAndClear();

    ShuffleOrder cloneAndInsert(int i2, int i7);

    ShuffleOrder cloneAndMove(int i2, int i7, int i8);

    ShuffleOrder cloneAndRemove(int i2, int i7);

    ShuffleOrder cloneAndSet(int i2, int i7);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i2);

    int getPreviousIndex(int i2);
}
