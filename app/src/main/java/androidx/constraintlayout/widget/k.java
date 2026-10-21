package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: n, reason: collision with root package name */
    public static final SparseIntArray f5489n;

    /* renamed from: a, reason: collision with root package name */
    public float f5490a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public float f5491b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public float f5492c = 0.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f5493d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f5494e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f5495f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public float f5496g = Float.NaN;

    /* renamed from: h, reason: collision with root package name */
    public int f5497h = -1;

    /* renamed from: i, reason: collision with root package name */
    public float f5498i = 0.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f5499j = 0.0f;

    /* renamed from: k, reason: collision with root package name */
    public float f5500k = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5501l = false;

    /* renamed from: m, reason: collision with root package name */
    public float f5502m = 0.0f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5489n = sparseIntArray;
        sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
        sparseIntArray.append(R.styleable.Transform_android_rotationX, 2);
        sparseIntArray.append(R.styleable.Transform_android_rotationY, 3);
        sparseIntArray.append(R.styleable.Transform_android_scaleX, 4);
        sparseIntArray.append(R.styleable.Transform_android_scaleY, 5);
        sparseIntArray.append(R.styleable.Transform_android_transformPivotX, 6);
        sparseIntArray.append(R.styleable.Transform_android_transformPivotY, 7);
        sparseIntArray.append(R.styleable.Transform_android_translationX, 8);
        sparseIntArray.append(R.styleable.Transform_android_translationY, 9);
        sparseIntArray.append(R.styleable.Transform_android_translationZ, 10);
        sparseIntArray.append(R.styleable.Transform_android_elevation, 11);
        sparseIntArray.append(R.styleable.Transform_transformPivotTarget, 12);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            switch (f5489n.get(index)) {
                case 1:
                    this.f5490a = obtainStyledAttributes.getFloat(index, this.f5490a);
                    break;
                case 2:
                    this.f5491b = obtainStyledAttributes.getFloat(index, this.f5491b);
                    break;
                case 3:
                    this.f5492c = obtainStyledAttributes.getFloat(index, this.f5492c);
                    break;
                case 4:
                    this.f5493d = obtainStyledAttributes.getFloat(index, this.f5493d);
                    break;
                case 5:
                    this.f5494e = obtainStyledAttributes.getFloat(index, this.f5494e);
                    break;
                case 6:
                    this.f5495f = obtainStyledAttributes.getDimension(index, this.f5495f);
                    break;
                case 7:
                    this.f5496g = obtainStyledAttributes.getDimension(index, this.f5496g);
                    break;
                case 8:
                    this.f5498i = obtainStyledAttributes.getDimension(index, this.f5498i);
                    break;
                case 9:
                    this.f5499j = obtainStyledAttributes.getDimension(index, this.f5499j);
                    break;
                case 10:
                    this.f5500k = obtainStyledAttributes.getDimension(index, this.f5500k);
                    break;
                case 11:
                    this.f5501l = true;
                    this.f5502m = obtainStyledAttributes.getDimension(index, this.f5502m);
                    break;
                case 12:
                    this.f5497h = l.d(obtainStyledAttributes, index, this.f5497h);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void copyFrom(k kVar) {
        kVar.getClass();
        this.f5490a = kVar.f5490a;
        this.f5491b = kVar.f5491b;
        this.f5492c = kVar.f5492c;
        this.f5493d = kVar.f5493d;
        this.f5494e = kVar.f5494e;
        this.f5495f = kVar.f5495f;
        this.f5496g = kVar.f5496g;
        this.f5497h = kVar.f5497h;
        this.f5498i = kVar.f5498i;
        this.f5499j = kVar.f5499j;
        this.f5500k = kVar.f5500k;
        this.f5501l = kVar.f5501l;
        this.f5502m = kVar.f5502m;
    }
}
