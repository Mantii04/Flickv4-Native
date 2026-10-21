package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import cz.msebera.android.httpclient.util.LangUtils;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: p0, reason: collision with root package name */
    public static final SparseIntArray f5407p0;

    /* renamed from: b, reason: collision with root package name */
    public int f5436b;

    /* renamed from: c, reason: collision with root package name */
    public int f5438c;

    /* renamed from: i0, reason: collision with root package name */
    public int[] f5451i0;

    /* renamed from: j0, reason: collision with root package name */
    public String f5453j0;

    /* renamed from: k0, reason: collision with root package name */
    public String f5455k0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5434a = false;

    /* renamed from: d, reason: collision with root package name */
    public int f5440d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f5442e = -1;

    /* renamed from: f, reason: collision with root package name */
    public float f5444f = -1.0f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5446g = true;

    /* renamed from: h, reason: collision with root package name */
    public int f5448h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f5450i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f5452j = -1;

    /* renamed from: k, reason: collision with root package name */
    public int f5454k = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f5456l = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f5458m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f5460n = -1;

    /* renamed from: o, reason: collision with root package name */
    public int f5462o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f5464p = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f5465q = -1;

    /* renamed from: r, reason: collision with root package name */
    public int f5466r = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f5467s = -1;

    /* renamed from: t, reason: collision with root package name */
    public int f5468t = -1;

    /* renamed from: u, reason: collision with root package name */
    public int f5469u = -1;

    /* renamed from: v, reason: collision with root package name */
    public int f5470v = -1;

    /* renamed from: w, reason: collision with root package name */
    public float f5471w = 0.5f;

    /* renamed from: x, reason: collision with root package name */
    public float f5472x = 0.5f;

    /* renamed from: y, reason: collision with root package name */
    public String f5473y = null;

    /* renamed from: z, reason: collision with root package name */
    public int f5474z = -1;

    /* renamed from: A, reason: collision with root package name */
    public int f5408A = 0;

    /* renamed from: B, reason: collision with root package name */
    public float f5409B = 0.0f;

    /* renamed from: C, reason: collision with root package name */
    public int f5410C = -1;

    /* renamed from: D, reason: collision with root package name */
    public int f5411D = -1;

    /* renamed from: E, reason: collision with root package name */
    public int f5412E = -1;

    /* renamed from: F, reason: collision with root package name */
    public int f5413F = 0;

    /* renamed from: G, reason: collision with root package name */
    public int f5414G = 0;

    /* renamed from: H, reason: collision with root package name */
    public int f5415H = 0;

    /* renamed from: I, reason: collision with root package name */
    public int f5416I = 0;

    /* renamed from: J, reason: collision with root package name */
    public int f5417J = 0;

    /* renamed from: K, reason: collision with root package name */
    public int f5418K = 0;

    /* renamed from: L, reason: collision with root package name */
    public int f5419L = 0;

    /* renamed from: M, reason: collision with root package name */
    public int f5420M = Integer.MIN_VALUE;

    /* renamed from: N, reason: collision with root package name */
    public int f5421N = Integer.MIN_VALUE;

    /* renamed from: O, reason: collision with root package name */
    public int f5422O = Integer.MIN_VALUE;

    /* renamed from: P, reason: collision with root package name */
    public int f5423P = Integer.MIN_VALUE;

    /* renamed from: Q, reason: collision with root package name */
    public int f5424Q = Integer.MIN_VALUE;

    /* renamed from: R, reason: collision with root package name */
    public int f5425R = Integer.MIN_VALUE;

    /* renamed from: S, reason: collision with root package name */
    public int f5426S = Integer.MIN_VALUE;

    /* renamed from: T, reason: collision with root package name */
    public float f5427T = -1.0f;

    /* renamed from: U, reason: collision with root package name */
    public float f5428U = -1.0f;

    /* renamed from: V, reason: collision with root package name */
    public int f5429V = 0;

    /* renamed from: W, reason: collision with root package name */
    public int f5430W = 0;

    /* renamed from: X, reason: collision with root package name */
    public int f5431X = 0;

    /* renamed from: Y, reason: collision with root package name */
    public int f5432Y = 0;

    /* renamed from: Z, reason: collision with root package name */
    public int f5433Z = 0;

    /* renamed from: a0, reason: collision with root package name */
    public int f5435a0 = 0;

    /* renamed from: b0, reason: collision with root package name */
    public int f5437b0 = 0;

    /* renamed from: c0, reason: collision with root package name */
    public int f5439c0 = 0;

    /* renamed from: d0, reason: collision with root package name */
    public float f5441d0 = 1.0f;

    /* renamed from: e0, reason: collision with root package name */
    public float f5443e0 = 1.0f;

    /* renamed from: f0, reason: collision with root package name */
    public int f5445f0 = -1;

    /* renamed from: g0, reason: collision with root package name */
    public int f5447g0 = 0;

    /* renamed from: h0, reason: collision with root package name */
    public int f5449h0 = -1;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f5457l0 = false;

    /* renamed from: m0, reason: collision with root package name */
    public boolean f5459m0 = false;

    /* renamed from: n0, reason: collision with root package name */
    public boolean f5461n0 = true;

    /* renamed from: o0, reason: collision with root package name */
    public int f5463o0 = 0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5407p0 = sparseIntArray;
        sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
        sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
        sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
        sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
        sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
        sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
        sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
        sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
        sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
        sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteX, 6);
        sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteY, 7);
        sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
        sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_end, 18);
        sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
        sparseIntArray.append(R.styleable.Layout_guidelineUseRtl, 90);
        sparseIntArray.append(R.styleable.Layout_android_orientation, 26);
        sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
        sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
        sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
        sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginLeft, 13);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginTop, 16);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginRight, 14);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginBottom, 11);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginStart, 15);
        sparseIntArray.append(R.styleable.Layout_layout_goneMarginEnd, 12);
        sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
        sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
        sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
        sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
        sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
        sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
        sparseIntArray.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
        sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_creator, 91);
        sparseIntArray.append(R.styleable.Layout_layout_constraintTop_creator, 91);
        sparseIntArray.append(R.styleable.Layout_layout_constraintRight_creator, 91);
        sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_creator, 91);
        sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_creator, 91);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginLeft, 23);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginRight, 27);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginStart, 30);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginEnd, 8);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginTop, 33);
        sparseIntArray.append(R.styleable.Layout_android_layout_marginBottom, 2);
        sparseIntArray.append(R.styleable.Layout_android_layout_width, 22);
        sparseIntArray.append(R.styleable.Layout_android_layout_height, 21);
        sparseIntArray.append(R.styleable.Layout_layout_constraintWidth, 41);
        sparseIntArray.append(R.styleable.Layout_layout_constraintHeight, 42);
        sparseIntArray.append(R.styleable.Layout_layout_constrainedWidth, 41);
        sparseIntArray.append(R.styleable.Layout_layout_constrainedHeight, 42);
        sparseIntArray.append(R.styleable.Layout_layout_wrapBehaviorInParent, 76);
        sparseIntArray.append(R.styleable.Layout_layout_constraintCircle, 61);
        sparseIntArray.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
        sparseIntArray.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
        sparseIntArray.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
        sparseIntArray.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
        sparseIntArray.append(R.styleable.Layout_chainUseRtl, 71);
        sparseIntArray.append(R.styleable.Layout_barrierDirection, 72);
        sparseIntArray.append(R.styleable.Layout_barrierMargin, 73);
        sparseIntArray.append(R.styleable.Layout_constraint_referenced_ids, 74);
        sparseIntArray.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray = f5407p0;
            int i7 = sparseIntArray.get(index);
            switch (i7) {
                case 1:
                    this.f5464p = l.d(obtainStyledAttributes, index, this.f5464p);
                    break;
                case 2:
                    this.f5416I = obtainStyledAttributes.getDimensionPixelSize(index, this.f5416I);
                    break;
                case 3:
                    this.f5462o = l.d(obtainStyledAttributes, index, this.f5462o);
                    break;
                case 4:
                    this.f5460n = l.d(obtainStyledAttributes, index, this.f5460n);
                    break;
                case 5:
                    this.f5473y = obtainStyledAttributes.getString(index);
                    break;
                case 6:
                    this.f5410C = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5410C);
                    break;
                case 7:
                    this.f5411D = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5411D);
                    break;
                case 8:
                    this.f5417J = obtainStyledAttributes.getDimensionPixelSize(index, this.f5417J);
                    break;
                case 9:
                    this.f5470v = l.d(obtainStyledAttributes, index, this.f5470v);
                    break;
                case 10:
                    this.f5469u = l.d(obtainStyledAttributes, index, this.f5469u);
                    break;
                case 11:
                    this.f5423P = obtainStyledAttributes.getDimensionPixelSize(index, this.f5423P);
                    break;
                case 12:
                    this.f5424Q = obtainStyledAttributes.getDimensionPixelSize(index, this.f5424Q);
                    break;
                case 13:
                    this.f5420M = obtainStyledAttributes.getDimensionPixelSize(index, this.f5420M);
                    break;
                case 14:
                    this.f5422O = obtainStyledAttributes.getDimensionPixelSize(index, this.f5422O);
                    break;
                case 15:
                    this.f5425R = obtainStyledAttributes.getDimensionPixelSize(index, this.f5425R);
                    break;
                case 16:
                    this.f5421N = obtainStyledAttributes.getDimensionPixelSize(index, this.f5421N);
                    break;
                case 17:
                    this.f5440d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5440d);
                    break;
                case 18:
                    this.f5442e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f5442e);
                    break;
                case 19:
                    this.f5444f = obtainStyledAttributes.getFloat(index, this.f5444f);
                    break;
                case 20:
                    this.f5471w = obtainStyledAttributes.getFloat(index, this.f5471w);
                    break;
                case 21:
                    this.f5438c = obtainStyledAttributes.getLayoutDimension(index, this.f5438c);
                    break;
                case 22:
                    this.f5436b = obtainStyledAttributes.getLayoutDimension(index, this.f5436b);
                    break;
                case 23:
                    this.f5413F = obtainStyledAttributes.getDimensionPixelSize(index, this.f5413F);
                    break;
                case 24:
                    this.f5448h = l.d(obtainStyledAttributes, index, this.f5448h);
                    break;
                case 25:
                    this.f5450i = l.d(obtainStyledAttributes, index, this.f5450i);
                    break;
                case 26:
                    this.f5412E = obtainStyledAttributes.getInt(index, this.f5412E);
                    break;
                case 27:
                    this.f5414G = obtainStyledAttributes.getDimensionPixelSize(index, this.f5414G);
                    break;
                case 28:
                    this.f5452j = l.d(obtainStyledAttributes, index, this.f5452j);
                    break;
                case 29:
                    this.f5454k = l.d(obtainStyledAttributes, index, this.f5454k);
                    break;
                case 30:
                    this.f5418K = obtainStyledAttributes.getDimensionPixelSize(index, this.f5418K);
                    break;
                case 31:
                    this.f5467s = l.d(obtainStyledAttributes, index, this.f5467s);
                    break;
                case 32:
                    this.f5468t = l.d(obtainStyledAttributes, index, this.f5468t);
                    break;
                case 33:
                    this.f5415H = obtainStyledAttributes.getDimensionPixelSize(index, this.f5415H);
                    break;
                case 34:
                    this.f5458m = l.d(obtainStyledAttributes, index, this.f5458m);
                    break;
                case 35:
                    this.f5456l = l.d(obtainStyledAttributes, index, this.f5456l);
                    break;
                case 36:
                    this.f5472x = obtainStyledAttributes.getFloat(index, this.f5472x);
                    break;
                case LangUtils.HASH_OFFSET /* 37 */:
                    this.f5428U = obtainStyledAttributes.getFloat(index, this.f5428U);
                    break;
                case 38:
                    this.f5427T = obtainStyledAttributes.getFloat(index, this.f5427T);
                    break;
                case 39:
                    this.f5429V = obtainStyledAttributes.getInt(index, this.f5429V);
                    break;
                case 40:
                    this.f5430W = obtainStyledAttributes.getInt(index, this.f5430W);
                    break;
                case 41:
                    l.e(this, obtainStyledAttributes, index, 0);
                    break;
                case 42:
                    l.e(this, obtainStyledAttributes, index, 1);
                    break;
                default:
                    switch (i7) {
                        case 61:
                            this.f5474z = l.d(obtainStyledAttributes, index, this.f5474z);
                            break;
                        case 62:
                            this.f5408A = obtainStyledAttributes.getDimensionPixelSize(index, this.f5408A);
                            break;
                        case 63:
                            this.f5409B = obtainStyledAttributes.getFloat(index, this.f5409B);
                            break;
                        default:
                            switch (i7) {
                                case 69:
                                    this.f5441d0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 70:
                                    this.f5443e0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    break;
                                case 72:
                                    this.f5445f0 = obtainStyledAttributes.getInt(index, this.f5445f0);
                                    break;
                                case 73:
                                    this.f5447g0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f5447g0);
                                    break;
                                case 74:
                                    this.f5453j0 = obtainStyledAttributes.getString(index);
                                    break;
                                case 75:
                                    this.f5461n0 = obtainStyledAttributes.getBoolean(index, this.f5461n0);
                                    break;
                                case 76:
                                    this.f5463o0 = obtainStyledAttributes.getInt(index, this.f5463o0);
                                    break;
                                case 77:
                                    this.f5465q = l.d(obtainStyledAttributes, index, this.f5465q);
                                    break;
                                case 78:
                                    this.f5466r = l.d(obtainStyledAttributes, index, this.f5466r);
                                    break;
                                case 79:
                                    this.f5426S = obtainStyledAttributes.getDimensionPixelSize(index, this.f5426S);
                                    break;
                                case 80:
                                    this.f5419L = obtainStyledAttributes.getDimensionPixelSize(index, this.f5419L);
                                    break;
                                case 81:
                                    this.f5431X = obtainStyledAttributes.getInt(index, this.f5431X);
                                    break;
                                case 82:
                                    this.f5432Y = obtainStyledAttributes.getInt(index, this.f5432Y);
                                    break;
                                case 83:
                                    this.f5435a0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f5435a0);
                                    break;
                                case 84:
                                    this.f5433Z = obtainStyledAttributes.getDimensionPixelSize(index, this.f5433Z);
                                    break;
                                case 85:
                                    this.f5439c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f5439c0);
                                    break;
                                case 86:
                                    this.f5437b0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f5437b0);
                                    break;
                                case 87:
                                    this.f5457l0 = obtainStyledAttributes.getBoolean(index, this.f5457l0);
                                    break;
                                case 88:
                                    this.f5459m0 = obtainStyledAttributes.getBoolean(index, this.f5459m0);
                                    break;
                                case 89:
                                    this.f5455k0 = obtainStyledAttributes.getString(index);
                                    break;
                                case 90:
                                    this.f5446g = obtainStyledAttributes.getBoolean(index, this.f5446g);
                                    break;
                                case 91:
                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                    break;
                                default:
                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void copyFrom(h hVar) {
        this.f5434a = hVar.f5434a;
        this.f5436b = hVar.f5436b;
        this.f5438c = hVar.f5438c;
        this.f5440d = hVar.f5440d;
        this.f5442e = hVar.f5442e;
        this.f5444f = hVar.f5444f;
        this.f5446g = hVar.f5446g;
        this.f5448h = hVar.f5448h;
        this.f5450i = hVar.f5450i;
        this.f5452j = hVar.f5452j;
        this.f5454k = hVar.f5454k;
        this.f5456l = hVar.f5456l;
        this.f5458m = hVar.f5458m;
        this.f5460n = hVar.f5460n;
        this.f5462o = hVar.f5462o;
        this.f5464p = hVar.f5464p;
        this.f5465q = hVar.f5465q;
        this.f5466r = hVar.f5466r;
        this.f5467s = hVar.f5467s;
        this.f5468t = hVar.f5468t;
        this.f5469u = hVar.f5469u;
        this.f5470v = hVar.f5470v;
        this.f5471w = hVar.f5471w;
        this.f5472x = hVar.f5472x;
        this.f5473y = hVar.f5473y;
        this.f5474z = hVar.f5474z;
        this.f5408A = hVar.f5408A;
        this.f5409B = hVar.f5409B;
        this.f5410C = hVar.f5410C;
        this.f5411D = hVar.f5411D;
        this.f5412E = hVar.f5412E;
        this.f5413F = hVar.f5413F;
        this.f5414G = hVar.f5414G;
        this.f5415H = hVar.f5415H;
        this.f5416I = hVar.f5416I;
        this.f5417J = hVar.f5417J;
        this.f5418K = hVar.f5418K;
        this.f5419L = hVar.f5419L;
        this.f5420M = hVar.f5420M;
        this.f5421N = hVar.f5421N;
        this.f5422O = hVar.f5422O;
        this.f5423P = hVar.f5423P;
        this.f5424Q = hVar.f5424Q;
        this.f5425R = hVar.f5425R;
        this.f5426S = hVar.f5426S;
        this.f5427T = hVar.f5427T;
        this.f5428U = hVar.f5428U;
        this.f5429V = hVar.f5429V;
        this.f5430W = hVar.f5430W;
        this.f5431X = hVar.f5431X;
        this.f5432Y = hVar.f5432Y;
        this.f5433Z = hVar.f5433Z;
        this.f5435a0 = hVar.f5435a0;
        this.f5437b0 = hVar.f5437b0;
        this.f5439c0 = hVar.f5439c0;
        this.f5441d0 = hVar.f5441d0;
        this.f5443e0 = hVar.f5443e0;
        this.f5445f0 = hVar.f5445f0;
        this.f5447g0 = hVar.f5447g0;
        this.f5449h0 = hVar.f5449h0;
        this.f5455k0 = hVar.f5455k0;
        int[] iArr = hVar.f5451i0;
        if (iArr == null || hVar.f5453j0 != null) {
            this.f5451i0 = null;
        } else {
            this.f5451i0 = Arrays.copyOf(iArr, iArr.length);
        }
        this.f5453j0 = hVar.f5453j0;
        this.f5457l0 = hVar.f5457l0;
        this.f5459m0 = hVar.f5459m0;
        this.f5461n0 = hVar.f5461n0;
        this.f5463o0 = hVar.f5463o0;
    }
}
