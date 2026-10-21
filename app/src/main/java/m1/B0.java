package m1;

import M.AbstractC0181p0;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class B0 {

    /* renamed from: t, reason: collision with root package name */
    public static final List f18216t = Collections.EMPTY_LIST;

    /* renamed from: a, reason: collision with root package name */
    public final View f18217a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f18218b;

    /* renamed from: j, reason: collision with root package name */
    public int f18226j;

    /* renamed from: r, reason: collision with root package name */
    public RecyclerView f18234r;

    /* renamed from: s, reason: collision with root package name */
    public V f18235s;

    /* renamed from: c, reason: collision with root package name */
    public int f18219c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f18220d = -1;

    /* renamed from: e, reason: collision with root package name */
    public long f18221e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f18222f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f18223g = -1;

    /* renamed from: h, reason: collision with root package name */
    public B0 f18224h = null;

    /* renamed from: i, reason: collision with root package name */
    public B0 f18225i = null;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f18227k = null;

    /* renamed from: l, reason: collision with root package name */
    public List f18228l = null;

    /* renamed from: m, reason: collision with root package name */
    public int f18229m = 0;

    /* renamed from: n, reason: collision with root package name */
    public C1300p0 f18230n = null;

    /* renamed from: o, reason: collision with root package name */
    public boolean f18231o = false;

    /* renamed from: p, reason: collision with root package name */
    public int f18232p = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f18233q = -1;

    public B0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f18217a = view;
    }

    public final void a(int i2) {
        this.f18226j = i2 | this.f18226j;
    }

    public final List b() {
        ArrayList arrayList;
        return ((this.f18226j & 1024) != 0 || (arrayList = this.f18227k) == null || arrayList.size() == 0) ? f18216t : this.f18228l;
    }

    public final boolean c() {
        View view = this.f18217a;
        return (view.getParent() == null || view.getParent() == this.f18234r) ? false : true;
    }

    public final boolean d() {
        return (this.f18226j & 1) != 0;
    }

    public final boolean e() {
        return (this.f18226j & 4) != 0;
    }

    public final boolean f() {
        return (this.f18226j & 8) != 0;
    }

    public final boolean g() {
        return this.f18230n != null;
    }

    public final int getAbsoluteAdapterPosition() {
        RecyclerView recyclerView = this.f18234r;
        if (recyclerView == null) {
            return -1;
        }
        return recyclerView.C(this);
    }

    @Deprecated
    public final int getAdapterPosition() {
        return getBindingAdapterPosition();
    }

    public final int getBindingAdapterPosition() {
        RecyclerView recyclerView;
        V adapter;
        int C6;
        if (this.f18235s == null || (recyclerView = this.f18234r) == null || (adapter = recyclerView.getAdapter()) == null || (C6 = this.f18234r.C(this)) == -1) {
            return -1;
        }
        return adapter.findRelativeAdapterPositionIn(this.f18235s, this, C6);
    }

    public final long getItemId() {
        return this.f18221e;
    }

    public final int getItemViewType() {
        return this.f18222f;
    }

    public final int getLayoutPosition() {
        int i2 = this.f18223g;
        return i2 == -1 ? this.f18219c : i2;
    }

    public final int getOldPosition() {
        return this.f18220d;
    }

    public final boolean h() {
        return (this.f18226j & 256) != 0;
    }

    public final boolean i() {
        return (this.f18226j & 2) != 0;
    }

    public final boolean isRecyclable() {
        return (this.f18226j & 16) == 0 && !AbstractC0181p0.hasTransientState(this.f18217a);
    }

    public final void j(int i2, boolean z6) {
        if (this.f18220d == -1) {
            this.f18220d = this.f18219c;
        }
        if (this.f18223g == -1) {
            this.f18223g = this.f18219c;
        }
        if (z6) {
            this.f18223g += i2;
        }
        this.f18219c += i2;
        View view = this.f18217a;
        if (view.getLayoutParams() != null) {
            ((C1288j0) view.getLayoutParams()).f18411c = true;
        }
    }

    public final void k() {
        if (RecyclerView.f7998J0 && h()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f18226j = 0;
        this.f18219c = -1;
        this.f18220d = -1;
        this.f18221e = -1L;
        this.f18223g = -1;
        this.f18229m = 0;
        this.f18224h = null;
        this.f18225i = null;
        ArrayList arrayList = this.f18227k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f18226j &= -1025;
        this.f18232p = 0;
        this.f18233q = -1;
        RecyclerView.i(this);
    }

    public final boolean l() {
        return (this.f18226j & 128) != 0;
    }

    public final boolean m() {
        return (this.f18226j & 32) != 0;
    }

    public final void setIsRecyclable(boolean z6) {
        int i2 = this.f18229m;
        int i7 = z6 ? i2 - 1 : i2 + 1;
        this.f18229m = i7;
        if (i7 < 0) {
            this.f18229m = 0;
            if (RecyclerView.f7998J0) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z6 && i7 == 1) {
            this.f18226j |= 16;
        } else if (z6 && i7 == 0) {
            this.f18226j &= -17;
        }
        if (RecyclerView.f7999K0) {
            Log.d("RecyclerView", "setIsRecyclable val:" + z6 + ":" + this);
        }
    }

    public String toString() {
        StringBuilder s6 = A.i.s(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        s6.append(Integer.toHexString(hashCode()));
        s6.append(" position=");
        s6.append(this.f18219c);
        s6.append(" id=");
        s6.append(this.f18221e);
        s6.append(", oldPos=");
        s6.append(this.f18220d);
        s6.append(", pLpos:");
        s6.append(this.f18223g);
        StringBuilder sb = new StringBuilder(s6.toString());
        if (g()) {
            sb.append(" scrap ");
            sb.append(this.f18231o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (e()) {
            sb.append(" invalid");
        }
        if (!d()) {
            sb.append(" unbound");
        }
        if ((this.f18226j & 2) != 0) {
            sb.append(" update");
        }
        if (f()) {
            sb.append(" removed");
        }
        if (l()) {
            sb.append(" ignored");
        }
        if (h()) {
            sb.append(" tmpDetached");
        }
        if (!isRecyclable()) {
            sb.append(" not recyclable(" + this.f18229m + ")");
        }
        if ((this.f18226j & 512) != 0 || e()) {
            sb.append(" undefined adapter position");
        }
        if (this.f18217a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
