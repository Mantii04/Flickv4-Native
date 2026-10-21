package l;

/* loaded from: classes.dex */
public final class F1 {

    /* renamed from: a, reason: collision with root package name */
    public int f17685a;

    /* renamed from: b, reason: collision with root package name */
    public int f17686b;

    /* renamed from: c, reason: collision with root package name */
    public int f17687c;

    /* renamed from: d, reason: collision with root package name */
    public int f17688d;

    /* renamed from: e, reason: collision with root package name */
    public int f17689e;

    /* renamed from: f, reason: collision with root package name */
    public int f17690f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17691g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17692h;

    public int getEnd() {
        return this.f17691g ? this.f17685a : this.f17686b;
    }

    public int getLeft() {
        return this.f17685a;
    }

    public int getRight() {
        return this.f17686b;
    }

    public int getStart() {
        return this.f17691g ? this.f17686b : this.f17685a;
    }

    public void setAbsolute(int i2, int i7) {
        this.f17692h = false;
        if (i2 != Integer.MIN_VALUE) {
            this.f17689e = i2;
            this.f17685a = i2;
        }
        if (i7 != Integer.MIN_VALUE) {
            this.f17690f = i7;
            this.f17686b = i7;
        }
    }

    public void setDirection(boolean z6) {
        if (z6 == this.f17691g) {
            return;
        }
        this.f17691g = z6;
        if (!this.f17692h) {
            this.f17685a = this.f17689e;
            this.f17686b = this.f17690f;
            return;
        }
        if (z6) {
            int i2 = this.f17688d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f17689e;
            }
            this.f17685a = i2;
            int i7 = this.f17687c;
            if (i7 == Integer.MIN_VALUE) {
                i7 = this.f17690f;
            }
            this.f17686b = i7;
            return;
        }
        int i8 = this.f17687c;
        if (i8 == Integer.MIN_VALUE) {
            i8 = this.f17689e;
        }
        this.f17685a = i8;
        int i9 = this.f17688d;
        if (i9 == Integer.MIN_VALUE) {
            i9 = this.f17690f;
        }
        this.f17686b = i9;
    }

    public void setRelative(int i2, int i7) {
        this.f17687c = i2;
        this.f17688d = i7;
        this.f17692h = true;
        if (this.f17691g) {
            if (i7 != Integer.MIN_VALUE) {
                this.f17685a = i7;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f17686b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f17685a = i2;
        }
        if (i7 != Integer.MIN_VALUE) {
            this.f17686b = i7;
        }
    }
}
