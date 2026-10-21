package f1;

import android.os.Bundle;

/* renamed from: f1.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0916w {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f14326a;

    /* renamed from: b, reason: collision with root package name */
    public L f14327b;

    public C0916w(L l7, boolean z6) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        Bundle bundle = new Bundle();
        this.f14326a = bundle;
        this.f14327b = l7;
        bundle.putBundle("selector", l7.asBundle());
        bundle.putBoolean("activeScan", z6);
    }

    public Bundle asBundle() {
        return this.f14326a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0916w) {
            C0916w c0916w = (C0916w) obj;
            if (getSelector().equals(c0916w.getSelector()) && isActiveScan() == c0916w.isActiveScan()) {
                return true;
            }
        }
        return false;
    }

    public L getSelector() {
        if (this.f14327b == null) {
            L fromBundle = L.fromBundle(this.f14326a.getBundle("selector"));
            this.f14327b = fromBundle;
            if (fromBundle == null) {
                this.f14327b = L.f14160c;
            }
        }
        return this.f14327b;
    }

    public int hashCode() {
        return getSelector().hashCode() ^ isActiveScan();
    }

    public boolean isActiveScan() {
        return this.f14326a.getBoolean("activeScan");
    }

    public boolean isValid() {
        if (this.f14327b == null) {
            L fromBundle = L.fromBundle(this.f14326a.getBundle("selector"));
            this.f14327b = fromBundle;
            if (fromBundle == null) {
                this.f14327b = L.f14160c;
            }
        }
        return this.f14327b.isValid();
    }

    public String toString() {
        return "DiscoveryRequest{ selector=" + getSelector() + ", activeScan=" + isActiveScan() + ", isValid=" + isValid() + " }";
    }
}
