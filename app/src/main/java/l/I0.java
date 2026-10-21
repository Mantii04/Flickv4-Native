package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class I0 {

    /* renamed from: l, reason: collision with root package name */
    public static final RectF f17709l = new RectF();

    /* renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f17710m = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f17711a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17712b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f17713c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f17714d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f17715e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public int[] f17716f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f17717g = false;

    /* renamed from: h, reason: collision with root package name */
    public TextPaint f17718h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f17719i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f17720j;

    /* renamed from: k, reason: collision with root package name */
    public final F0 f17721k;

    static {
        new ConcurrentHashMap();
    }

    public I0(TextView textView) {
        this.f17719i = textView;
        this.f17720j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f17721k = new G0();
        } else {
            this.f17721k = new F0();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i2 : iArr) {
                if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i7 = 0; i7 < size; i7++) {
                    iArr2[i7] = ((Integer) arrayList.get(i7)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public static Method d(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f17710m;
            Method method = (Method) concurrentHashMap.get(str);
            if (method != null || (method = TextView.class.getDeclaredMethod(str, new Class[0])) == null) {
                return method;
            }
            method.setAccessible(true);
            concurrentHashMap.put(str, method);
            return method;
        } catch (Exception e3) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e3);
            return null;
        }
    }

    public static Object e(Object obj, String str, Object obj2) {
        try {
            return d(str).invoke(obj, new Object[0]);
        } catch (Exception e3) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e3);
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.f17712b) {
                if (this.f17719i.getMeasuredHeight() <= 0 || this.f17719i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f17721k.b(this.f17719i) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : (this.f17719i.getMeasuredWidth() - this.f17719i.getTotalPaddingLeft()) - this.f17719i.getTotalPaddingRight();
                int height = (this.f17719i.getHeight() - this.f17719i.getCompoundPaddingBottom()) - this.f17719i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f17709l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float c7 = c(rectF);
                        if (c7 != this.f17719i.getTextSize()) {
                            g(c7, 0);
                        }
                    } finally {
                    }
                }
            }
            this.f17712b = true;
        }
    }

    public final int c(RectF rectF) {
        CharSequence transformation;
        int length = this.f17716f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i2 = length - 1;
        int i7 = 0;
        int i8 = 1;
        while (i8 <= i2) {
            int i9 = (i8 + i2) / 2;
            int i10 = this.f17716f[i9];
            TextView textView = this.f17719i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, textView)) != null) {
                text = transformation;
            }
            int b7 = C0.b(textView);
            TextPaint textPaint = this.f17718h;
            if (textPaint == null) {
                this.f17718h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f17718h.set(textView.getPaint());
            this.f17718h.setTextSize(i10);
            StaticLayout a7 = E0.a(text, (Layout.Alignment) e(textView, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), b7, textView, this.f17718h, this.f17721k);
            if ((b7 == -1 || (a7.getLineCount() <= b7 && a7.getLineEnd(a7.getLineCount() - 1) == text.length())) && a7.getHeight() <= rectF.bottom) {
                int i11 = i9 + 1;
                i7 = i8;
                i8 = i11;
            } else {
                i7 = i9 - 1;
                i2 = i7;
            }
        }
        return this.f17716f[i7];
    }

    public final boolean f() {
        return j() && this.f17711a != 0;
    }

    public final void g(float f3, int i2) {
        Context context = this.f17720j;
        float applyDimension = TypedValue.applyDimension(i2, f3, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f17719i;
        if (applyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(applyDimension);
            boolean a7 = D0.a(textView);
            if (textView.getLayout() != null) {
                this.f17712b = false;
                try {
                    Method d7 = d("nullLayouts");
                    if (d7 != null) {
                        d7.invoke(textView, new Object[0]);
                    }
                } catch (Exception e3) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e3);
                }
                if (a7) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f17711a == 1) {
            if (!this.f17717g || this.f17716f.length == 0) {
                int floor = ((int) Math.floor((this.f17715e - this.f17714d) / this.f17713c)) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round((i2 * this.f17713c) + this.f17714d);
                }
                this.f17716f = b(iArr);
            }
            this.f17712b = true;
        } else {
            this.f17712b = false;
        }
        return this.f17712b;
    }

    public final boolean i() {
        boolean z6 = this.f17716f.length > 0;
        this.f17717g = z6;
        if (z6) {
            this.f17711a = 1;
            this.f17714d = r0[0];
            this.f17715e = r0[r1 - 1];
            this.f17713c = -1.0f;
        }
        return z6;
    }

    public final boolean j() {
        return !(this.f17719i instanceof K);
    }

    public final void k(float f3, float f7, float f8) {
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f3 + "px) is less or equal to (0px)");
        }
        if (f7 <= f3) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f7 + "px) is less or equal to minimum auto-size text size (" + f3 + "px)");
        }
        if (f8 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f8 + "px) is less or equal to (0px)");
        }
        this.f17711a = 1;
        this.f17714d = f3;
        this.f17715e = f7;
        this.f17713c = f8;
        this.f17717g = false;
    }
}
