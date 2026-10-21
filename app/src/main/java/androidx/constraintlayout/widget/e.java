package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import cz.msebera.android.httpclient.util.LangUtils;

/* loaded from: classes.dex */
public final class e extends ViewGroup.MarginLayoutParams {

    /* renamed from: A, reason: collision with root package name */
    public int f5331A;

    /* renamed from: B, reason: collision with root package name */
    public int f5332B;

    /* renamed from: C, reason: collision with root package name */
    public final int f5333C;

    /* renamed from: D, reason: collision with root package name */
    public final int f5334D;

    /* renamed from: E, reason: collision with root package name */
    public float f5335E;

    /* renamed from: F, reason: collision with root package name */
    public float f5336F;

    /* renamed from: G, reason: collision with root package name */
    public String f5337G;

    /* renamed from: H, reason: collision with root package name */
    public float f5338H;

    /* renamed from: I, reason: collision with root package name */
    public float f5339I;

    /* renamed from: J, reason: collision with root package name */
    public int f5340J;

    /* renamed from: K, reason: collision with root package name */
    public int f5341K;

    /* renamed from: L, reason: collision with root package name */
    public int f5342L;

    /* renamed from: M, reason: collision with root package name */
    public int f5343M;

    /* renamed from: N, reason: collision with root package name */
    public int f5344N;

    /* renamed from: O, reason: collision with root package name */
    public int f5345O;

    /* renamed from: P, reason: collision with root package name */
    public int f5346P;

    /* renamed from: Q, reason: collision with root package name */
    public int f5347Q;

    /* renamed from: R, reason: collision with root package name */
    public float f5348R;

    /* renamed from: S, reason: collision with root package name */
    public float f5349S;

    /* renamed from: T, reason: collision with root package name */
    public int f5350T;

    /* renamed from: U, reason: collision with root package name */
    public int f5351U;

    /* renamed from: V, reason: collision with root package name */
    public int f5352V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f5353W;

    /* renamed from: X, reason: collision with root package name */
    public boolean f5354X;

    /* renamed from: Y, reason: collision with root package name */
    public String f5355Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f5356Z;

    /* renamed from: a, reason: collision with root package name */
    public int f5357a;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f5358a0;

    /* renamed from: b, reason: collision with root package name */
    public int f5359b;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f5360b0;

    /* renamed from: c, reason: collision with root package name */
    public float f5361c;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f5362c0;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5363d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f5364d0;

    /* renamed from: e, reason: collision with root package name */
    public int f5365e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f5366e0;

    /* renamed from: f, reason: collision with root package name */
    public int f5367f;

    /* renamed from: f0, reason: collision with root package name */
    public int f5368f0;

    /* renamed from: g, reason: collision with root package name */
    public int f5369g;

    /* renamed from: g0, reason: collision with root package name */
    public int f5370g0;

    /* renamed from: h, reason: collision with root package name */
    public int f5371h;

    /* renamed from: h0, reason: collision with root package name */
    public int f5372h0;

    /* renamed from: i, reason: collision with root package name */
    public int f5373i;

    /* renamed from: i0, reason: collision with root package name */
    public int f5374i0;

    /* renamed from: j, reason: collision with root package name */
    public int f5375j;

    /* renamed from: j0, reason: collision with root package name */
    public int f5376j0;

    /* renamed from: k, reason: collision with root package name */
    public int f5377k;

    /* renamed from: k0, reason: collision with root package name */
    public int f5378k0;

    /* renamed from: l, reason: collision with root package name */
    public int f5379l;

    /* renamed from: l0, reason: collision with root package name */
    public float f5380l0;

    /* renamed from: m, reason: collision with root package name */
    public int f5381m;

    /* renamed from: m0, reason: collision with root package name */
    public int f5382m0;

    /* renamed from: n, reason: collision with root package name */
    public int f5383n;

    /* renamed from: n0, reason: collision with root package name */
    public int f5384n0;

    /* renamed from: o, reason: collision with root package name */
    public int f5385o;

    /* renamed from: o0, reason: collision with root package name */
    public float f5386o0;

    /* renamed from: p, reason: collision with root package name */
    public int f5387p;

    /* renamed from: p0, reason: collision with root package name */
    public u.e f5388p0;

    /* renamed from: q, reason: collision with root package name */
    public int f5389q;

    /* renamed from: r, reason: collision with root package name */
    public float f5390r;

    /* renamed from: s, reason: collision with root package name */
    public int f5391s;

    /* renamed from: t, reason: collision with root package name */
    public int f5392t;

    /* renamed from: u, reason: collision with root package name */
    public int f5393u;

    /* renamed from: v, reason: collision with root package name */
    public int f5394v;

    /* renamed from: w, reason: collision with root package name */
    public final int f5395w;

    /* renamed from: x, reason: collision with root package name */
    public int f5396x;

    /* renamed from: y, reason: collision with root package name */
    public final int f5397y;

    /* renamed from: z, reason: collision with root package name */
    public int f5398z;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5357a = -1;
        this.f5359b = -1;
        this.f5361c = -1.0f;
        this.f5363d = true;
        this.f5365e = -1;
        this.f5367f = -1;
        this.f5369g = -1;
        this.f5371h = -1;
        this.f5373i = -1;
        this.f5375j = -1;
        this.f5377k = -1;
        this.f5379l = -1;
        this.f5381m = -1;
        this.f5383n = -1;
        this.f5385o = -1;
        this.f5387p = -1;
        this.f5389q = 0;
        this.f5390r = 0.0f;
        this.f5391s = -1;
        this.f5392t = -1;
        this.f5393u = -1;
        this.f5394v = -1;
        this.f5395w = Integer.MIN_VALUE;
        this.f5396x = Integer.MIN_VALUE;
        this.f5397y = Integer.MIN_VALUE;
        this.f5398z = Integer.MIN_VALUE;
        this.f5331A = Integer.MIN_VALUE;
        this.f5332B = Integer.MIN_VALUE;
        this.f5333C = Integer.MIN_VALUE;
        this.f5334D = 0;
        this.f5335E = 0.5f;
        this.f5336F = 0.5f;
        this.f5337G = null;
        this.f5338H = -1.0f;
        this.f5339I = -1.0f;
        this.f5340J = 0;
        this.f5341K = 0;
        this.f5342L = 0;
        this.f5343M = 0;
        this.f5344N = 0;
        this.f5345O = 0;
        this.f5346P = 0;
        this.f5347Q = 0;
        this.f5348R = 1.0f;
        this.f5349S = 1.0f;
        this.f5350T = -1;
        this.f5351U = -1;
        this.f5352V = -1;
        this.f5353W = false;
        this.f5354X = false;
        this.f5355Y = null;
        this.f5356Z = 0;
        this.f5358a0 = true;
        this.f5360b0 = true;
        this.f5362c0 = false;
        this.f5364d0 = false;
        this.f5366e0 = false;
        this.f5368f0 = -1;
        this.f5370g0 = -1;
        this.f5372h0 = -1;
        this.f5374i0 = -1;
        this.f5376j0 = Integer.MIN_VALUE;
        this.f5378k0 = Integer.MIN_VALUE;
        this.f5380l0 = 0.5f;
        this.f5388p0 = new u.e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            int i7 = d.f5330a.get(index);
            switch (i7) {
                case 1:
                    this.f5352V = obtainStyledAttributes.getInt(index, this.f5352V);
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f5387p);
                    this.f5387p = resourceId;
                    if (resourceId == -1) {
                        this.f5387p = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    this.f5389q = obtainStyledAttributes.getDimensionPixelSize(index, this.f5389q);
                    break;
                case 4:
                    float f3 = obtainStyledAttributes.getFloat(index, this.f5390r) % 360.0f;
                    this.f5390r = f3;
                    if (f3 < 0.0f) {
                        this.f5390r = (360.0f - f3) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    this.f5357a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5357a);
                    break;
                case 6:
                    this.f5359b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5359b);
                    break;
                case 7:
                    this.f5361c = obtainStyledAttributes.getFloat(index, this.f5361c);
                    break;
                case 8:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f5365e);
                    this.f5365e = resourceId2;
                    if (resourceId2 == -1) {
                        this.f5365e = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f5367f);
                    this.f5367f = resourceId3;
                    if (resourceId3 == -1) {
                        this.f5367f = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f5369g);
                    this.f5369g = resourceId4;
                    if (resourceId4 == -1) {
                        this.f5369g = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f5371h);
                    this.f5371h = resourceId5;
                    if (resourceId5 == -1) {
                        this.f5371h = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f5373i);
                    this.f5373i = resourceId6;
                    if (resourceId6 == -1) {
                        this.f5373i = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f5375j);
                    this.f5375j = resourceId7;
                    if (resourceId7 == -1) {
                        this.f5375j = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f5377k);
                    this.f5377k = resourceId8;
                    if (resourceId8 == -1) {
                        this.f5377k = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f5379l);
                    this.f5379l = resourceId9;
                    if (resourceId9 == -1) {
                        this.f5379l = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f5381m);
                    this.f5381m = resourceId10;
                    if (resourceId10 == -1) {
                        this.f5381m = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f5391s);
                    this.f5391s = resourceId11;
                    if (resourceId11 == -1) {
                        this.f5391s = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f5392t);
                    this.f5392t = resourceId12;
                    if (resourceId12 == -1) {
                        this.f5392t = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f5393u);
                    this.f5393u = resourceId13;
                    if (resourceId13 == -1) {
                        this.f5393u = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f5394v);
                    this.f5394v = resourceId14;
                    if (resourceId14 == -1) {
                        this.f5394v = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    this.f5395w = obtainStyledAttributes.getDimensionPixelSize(index, this.f5395w);
                    break;
                case 22:
                    this.f5396x = obtainStyledAttributes.getDimensionPixelSize(index, this.f5396x);
                    break;
                case 23:
                    this.f5397y = obtainStyledAttributes.getDimensionPixelSize(index, this.f5397y);
                    break;
                case 24:
                    this.f5398z = obtainStyledAttributes.getDimensionPixelSize(index, this.f5398z);
                    break;
                case 25:
                    this.f5331A = obtainStyledAttributes.getDimensionPixelSize(index, this.f5331A);
                    break;
                case 26:
                    this.f5332B = obtainStyledAttributes.getDimensionPixelSize(index, this.f5332B);
                    break;
                case 27:
                    this.f5353W = obtainStyledAttributes.getBoolean(index, this.f5353W);
                    break;
                case 28:
                    this.f5354X = obtainStyledAttributes.getBoolean(index, this.f5354X);
                    break;
                case 29:
                    this.f5335E = obtainStyledAttributes.getFloat(index, this.f5335E);
                    break;
                case 30:
                    this.f5336F = obtainStyledAttributes.getFloat(index, this.f5336F);
                    break;
                case 31:
                    int i8 = obtainStyledAttributes.getInt(index, 0);
                    this.f5342L = i8;
                    if (i8 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i9 = obtainStyledAttributes.getInt(index, 0);
                    this.f5343M = i9;
                    if (i9 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        this.f5344N = obtainStyledAttributes.getDimensionPixelSize(index, this.f5344N);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, this.f5344N) == -2) {
                            this.f5344N = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        this.f5346P = obtainStyledAttributes.getDimensionPixelSize(index, this.f5346P);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, this.f5346P) == -2) {
                            this.f5346P = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    this.f5348R = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f5348R));
                    this.f5342L = 2;
                    break;
                case 36:
                    try {
                        this.f5345O = obtainStyledAttributes.getDimensionPixelSize(index, this.f5345O);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, this.f5345O) == -2) {
                            this.f5345O = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case LangUtils.HASH_OFFSET /* 37 */:
                    try {
                        this.f5347Q = obtainStyledAttributes.getDimensionPixelSize(index, this.f5347Q);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, this.f5347Q) == -2) {
                            this.f5347Q = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    this.f5349S = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f5349S));
                    this.f5343M = 2;
                    break;
                default:
                    switch (i7) {
                        case 44:
                            l.f(this, obtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            this.f5338H = obtainStyledAttributes.getFloat(index, this.f5338H);
                            break;
                        case 46:
                            this.f5339I = obtainStyledAttributes.getFloat(index, this.f5339I);
                            break;
                        case 47:
                            this.f5340J = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            this.f5341K = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            this.f5350T = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5350T);
                            break;
                        case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                            this.f5351U = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5351U);
                            break;
                        case 51:
                            this.f5355Y = obtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = obtainStyledAttributes.getResourceId(index, this.f5383n);
                            this.f5383n = resourceId15;
                            if (resourceId15 == -1) {
                                this.f5383n = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            int resourceId16 = obtainStyledAttributes.getResourceId(index, this.f5385o);
                            this.f5385o = resourceId16;
                            if (resourceId16 == -1) {
                                this.f5385o = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            this.f5334D = obtainStyledAttributes.getDimensionPixelSize(index, this.f5334D);
                            break;
                        case 55:
                            this.f5333C = obtainStyledAttributes.getDimensionPixelSize(index, this.f5333C);
                            break;
                        default:
                            switch (i7) {
                                case 64:
                                    l.e(this, obtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    l.e(this, obtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    this.f5356Z = obtainStyledAttributes.getInt(index, this.f5356Z);
                                    break;
                                case 67:
                                    this.f5363d = obtainStyledAttributes.getBoolean(index, this.f5363d);
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        validate();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    @android.annotation.TargetApi(17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resolveLayoutDirection(int r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.e.resolveLayoutDirection(int):void");
    }

    public void validate() {
        this.f5364d0 = false;
        this.f5358a0 = true;
        this.f5360b0 = true;
        int i2 = ((ViewGroup.MarginLayoutParams) this).width;
        if (i2 == -2 && this.f5353W) {
            this.f5358a0 = false;
            if (this.f5342L == 0) {
                this.f5342L = 1;
            }
        }
        int i7 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i7 == -2 && this.f5354X) {
            this.f5360b0 = false;
            if (this.f5343M == 0) {
                this.f5343M = 1;
            }
        }
        if (i2 == 0 || i2 == -1) {
            this.f5358a0 = false;
            if (i2 == 0 && this.f5342L == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.f5353W = true;
            }
        }
        if (i7 == 0 || i7 == -1) {
            this.f5360b0 = false;
            if (i7 == 0 && this.f5343M == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.f5354X = true;
            }
        }
        if (this.f5361c == -1.0f && this.f5357a == -1 && this.f5359b == -1) {
            return;
        }
        this.f5364d0 = true;
        this.f5358a0 = true;
        this.f5360b0 = true;
        if (!(this.f5388p0 instanceof u.i)) {
            this.f5388p0 = new u.i();
        }
        ((u.i) this.f5388p0).setOrientation(this.f5352V);
    }

    public e(int i2, int i7) {
        super(i2, i7);
        this.f5357a = -1;
        this.f5359b = -1;
        this.f5361c = -1.0f;
        this.f5363d = true;
        this.f5365e = -1;
        this.f5367f = -1;
        this.f5369g = -1;
        this.f5371h = -1;
        this.f5373i = -1;
        this.f5375j = -1;
        this.f5377k = -1;
        this.f5379l = -1;
        this.f5381m = -1;
        this.f5383n = -1;
        this.f5385o = -1;
        this.f5387p = -1;
        this.f5389q = 0;
        this.f5390r = 0.0f;
        this.f5391s = -1;
        this.f5392t = -1;
        this.f5393u = -1;
        this.f5394v = -1;
        this.f5395w = Integer.MIN_VALUE;
        this.f5396x = Integer.MIN_VALUE;
        this.f5397y = Integer.MIN_VALUE;
        this.f5398z = Integer.MIN_VALUE;
        this.f5331A = Integer.MIN_VALUE;
        this.f5332B = Integer.MIN_VALUE;
        this.f5333C = Integer.MIN_VALUE;
        this.f5334D = 0;
        this.f5335E = 0.5f;
        this.f5336F = 0.5f;
        this.f5337G = null;
        this.f5338H = -1.0f;
        this.f5339I = -1.0f;
        this.f5340J = 0;
        this.f5341K = 0;
        this.f5342L = 0;
        this.f5343M = 0;
        this.f5344N = 0;
        this.f5345O = 0;
        this.f5346P = 0;
        this.f5347Q = 0;
        this.f5348R = 1.0f;
        this.f5349S = 1.0f;
        this.f5350T = -1;
        this.f5351U = -1;
        this.f5352V = -1;
        this.f5353W = false;
        this.f5354X = false;
        this.f5355Y = null;
        this.f5356Z = 0;
        this.f5358a0 = true;
        this.f5360b0 = true;
        this.f5362c0 = false;
        this.f5364d0 = false;
        this.f5366e0 = false;
        this.f5368f0 = -1;
        this.f5370g0 = -1;
        this.f5372h0 = -1;
        this.f5374i0 = -1;
        this.f5376j0 = Integer.MIN_VALUE;
        this.f5378k0 = Integer.MIN_VALUE;
        this.f5380l0 = 0.5f;
        this.f5388p0 = new u.e();
    }

    public e(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f5357a = -1;
        this.f5359b = -1;
        this.f5361c = -1.0f;
        this.f5363d = true;
        this.f5365e = -1;
        this.f5367f = -1;
        this.f5369g = -1;
        this.f5371h = -1;
        this.f5373i = -1;
        this.f5375j = -1;
        this.f5377k = -1;
        this.f5379l = -1;
        this.f5381m = -1;
        this.f5383n = -1;
        this.f5385o = -1;
        this.f5387p = -1;
        this.f5389q = 0;
        this.f5390r = 0.0f;
        this.f5391s = -1;
        this.f5392t = -1;
        this.f5393u = -1;
        this.f5394v = -1;
        this.f5395w = Integer.MIN_VALUE;
        this.f5396x = Integer.MIN_VALUE;
        this.f5397y = Integer.MIN_VALUE;
        this.f5398z = Integer.MIN_VALUE;
        this.f5331A = Integer.MIN_VALUE;
        this.f5332B = Integer.MIN_VALUE;
        this.f5333C = Integer.MIN_VALUE;
        this.f5334D = 0;
        this.f5335E = 0.5f;
        this.f5336F = 0.5f;
        this.f5337G = null;
        this.f5338H = -1.0f;
        this.f5339I = -1.0f;
        this.f5340J = 0;
        this.f5341K = 0;
        this.f5342L = 0;
        this.f5343M = 0;
        this.f5344N = 0;
        this.f5345O = 0;
        this.f5346P = 0;
        this.f5347Q = 0;
        this.f5348R = 1.0f;
        this.f5349S = 1.0f;
        this.f5350T = -1;
        this.f5351U = -1;
        this.f5352V = -1;
        this.f5353W = false;
        this.f5354X = false;
        this.f5355Y = null;
        this.f5356Z = 0;
        this.f5358a0 = true;
        this.f5360b0 = true;
        this.f5362c0 = false;
        this.f5364d0 = false;
        this.f5366e0 = false;
        this.f5368f0 = -1;
        this.f5370g0 = -1;
        this.f5372h0 = -1;
        this.f5374i0 = -1;
        this.f5376j0 = Integer.MIN_VALUE;
        this.f5378k0 = Integer.MIN_VALUE;
        this.f5380l0 = 0.5f;
        this.f5388p0 = new u.e();
    }
}
