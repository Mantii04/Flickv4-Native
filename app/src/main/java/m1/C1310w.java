package m1;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* renamed from: m1.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1310w implements InterfaceC1282g0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18508a;

    /* renamed from: b, reason: collision with root package name */
    public int f18509b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f18510c;

    /* renamed from: d, reason: collision with root package name */
    public int f18511d;

    public final void a(RecyclerView recyclerView, boolean z6) {
        this.f18511d = 0;
        int[] iArr = this.f18510c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC1286i0 abstractC1286i0 = recyclerView.f8075w;
        if (recyclerView.f8073v == null || abstractC1286i0 == null || !abstractC1286i0.isItemPrefetchEnabled()) {
            return;
        }
        if (z6) {
            if (!recyclerView.f8056m.g()) {
                abstractC1286i0.collectInitialPrefetchPositions(recyclerView.f8073v.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            abstractC1286i0.collectAdjacentPrefetchPositions(this.f18508a, this.f18509b, recyclerView.f8064q0, this);
        }
        int i2 = this.f18511d;
        if (i2 > abstractC1286i0.f18397j) {
            abstractC1286i0.f18397j = i2;
            abstractC1286i0.f18398k = z6;
            recyclerView.f8047f.k();
        }
    }

    public void addPosition(int i2, int i7) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i8 = this.f18511d;
        int i9 = i8 * 2;
        int[] iArr = this.f18510c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f18510c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i9 >= iArr.length) {
            int[] iArr3 = new int[i8 * 4];
            this.f18510c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f18510c;
        iArr4[i9] = i2;
        iArr4[i9 + 1] = i7;
        this.f18511d++;
    }
}
