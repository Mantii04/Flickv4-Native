package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import com.google.firebase.sessions.settings.RemoteSettings;
import s.C1602a;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: j, reason: collision with root package name */
    public static final SparseIntArray f5475j;

    /* renamed from: a, reason: collision with root package name */
    public int f5476a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f5477b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f5478c = -1;

    /* renamed from: d, reason: collision with root package name */
    public float f5479d = Float.NaN;

    /* renamed from: e, reason: collision with root package name */
    public float f5480e = Float.NaN;

    /* renamed from: f, reason: collision with root package name */
    public float f5481f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public int f5482g = -1;

    /* renamed from: h, reason: collision with root package name */
    public String f5483h = null;

    /* renamed from: i, reason: collision with root package name */
    public int f5484i = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5475j = sparseIntArray;
        sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
        sparseIntArray.append(R.styleable.Motion_pathMotionArc, 2);
        sparseIntArray.append(R.styleable.Motion_transitionEasing, 3);
        sparseIntArray.append(R.styleable.Motion_drawPath, 4);
        sparseIntArray.append(R.styleable.Motion_animateRelativeTo, 5);
        sparseIntArray.append(R.styleable.Motion_animateCircleAngleTo, 6);
        sparseIntArray.append(R.styleable.Motion_motionStagger, 7);
        sparseIntArray.append(R.styleable.Motion_quantizeMotionSteps, 8);
        sparseIntArray.append(R.styleable.Motion_quantizeMotionPhase, 9);
        sparseIntArray.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            switch (f5475j.get(index)) {
                case 1:
                    this.f5480e = obtainStyledAttributes.getFloat(index, this.f5480e);
                    break;
                case 2:
                    this.f5478c = obtainStyledAttributes.getInt(index, this.f5478c);
                    break;
                case 3:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = C1602a.f19896a[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    obtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f5476a = l.d(obtainStyledAttributes, index, this.f5476a);
                    break;
                case 6:
                    this.f5477b = obtainStyledAttributes.getInteger(index, this.f5477b);
                    break;
                case 7:
                    this.f5479d = obtainStyledAttributes.getFloat(index, this.f5479d);
                    break;
                case 8:
                    this.f5482g = obtainStyledAttributes.getInteger(index, this.f5482g);
                    break;
                case 9:
                    this.f5481f = obtainStyledAttributes.getFloat(index, this.f5481f);
                    break;
                case 10:
                    int i7 = obtainStyledAttributes.peekValue(index).type;
                    if (i7 == 1) {
                        this.f5484i = obtainStyledAttributes.getResourceId(index, -1);
                        break;
                    } else if (i7 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f5483h = string;
                        if (string.indexOf(RemoteSettings.FORWARD_SLASH_STRING) > 0) {
                            this.f5484i = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        obtainStyledAttributes.getInteger(index, this.f5484i);
                        break;
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void copyFrom(i iVar) {
        iVar.getClass();
        this.f5476a = iVar.f5476a;
        this.f5478c = iVar.f5478c;
        this.f5480e = iVar.f5480e;
        this.f5479d = iVar.f5479d;
    }
}
