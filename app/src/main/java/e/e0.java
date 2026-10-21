package e;

import M.AbstractC0181p0;
import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import j.C1023f;
import java.lang.reflect.Constructor;
import l.C1119A;
import l.C1121C;
import l.C1122D;
import l.C1123E;
import l.C1170o0;
import l.J0;
import l.b2;

/* loaded from: classes.dex */
public class e0 {

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f13750b = {Context.class, AttributeSet.class};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f13751c = {R.attr.onClick};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f13752d = {R.attr.accessibilityHeading};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f13753e = {R.attr.accessibilityPaneTitle};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f13754f = {R.attr.screenReaderFocusable};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f13755g = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: h, reason: collision with root package name */
    public static final p.q f13756h = new p.q();

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f13757a = new Object[2];

    public final View a(Context context, String str, String str2) {
        String concat;
        p.q qVar = f13756h;
        Constructor constructor = (Constructor) qVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f13750b);
            qVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f13757a);
    }

    public final void b(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    public C1119A createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C1119A(context, attributeSet);
    }

    public C1121C createButton(Context context, AttributeSet attributeSet) {
        return new C1121C(context, attributeSet);
    }

    public C1122D createCheckBox(Context context, AttributeSet attributeSet) {
        return new C1122D(context, attributeSet);
    }

    public C1123E createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new C1123E(context, attributeSet);
    }

    public l.K createEditText(Context context, AttributeSet attributeSet) {
        return new l.K(context, attributeSet);
    }

    public l.N createImageButton(Context context, AttributeSet attributeSet) {
        return new l.N(context, attributeSet);
    }

    public l.P createImageView(Context context, AttributeSet attributeSet) {
        return new l.P(context, attributeSet);
    }

    public l.Q createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new l.Q(context, attributeSet);
    }

    public l.V createRadioButton(Context context, AttributeSet attributeSet) {
        return new l.V(context, attributeSet);
    }

    public l.W createRatingBar(Context context, AttributeSet attributeSet) {
        return new l.W(context, attributeSet);
    }

    public l.Y createSeekBar(Context context, AttributeSet attributeSet) {
        return new l.Y(context, attributeSet);
    }

    public C1170o0 createSpinner(Context context, AttributeSet attributeSet) {
        return new C1170o0(context, attributeSet);
    }

    public AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public J0 createToggleButton(Context context, AttributeSet attributeSet) {
        return new J0(context, attributeSet);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z6, boolean z7, boolean z8, boolean z9) {
        Context context2;
        View createRatingBar;
        context2 = (!z6 || view == null) ? context : view.getContext();
        if (z7 || z8) {
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
            int resourceId = z7 ? obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_android_theme, 0) : 0;
            if (z8 && resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0)) != 0) {
                Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
            obtainStyledAttributes.recycle();
            if (resourceId != 0 && (!(context2 instanceof C1023f) || ((C1023f) context2).getThemeResId() != resourceId)) {
                context2 = new C1023f(context2, resourceId);
            }
        }
        if (z9) {
            context2 = b2.wrap(context2);
        }
        str.getClass();
        switch (str) {
            case "RatingBar":
                createRatingBar = createRatingBar(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "CheckedTextView":
                createRatingBar = createCheckedTextView(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "MultiAutoCompleteTextView":
                createRatingBar = createMultiAutoCompleteTextView(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "TextView":
                createRatingBar = createTextView(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "ImageButton":
                createRatingBar = createImageButton(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "SeekBar":
                createRatingBar = createSeekBar(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "Spinner":
                createRatingBar = createSpinner(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "RadioButton":
                createRatingBar = createRadioButton(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "ToggleButton":
                createRatingBar = createToggleButton(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "ImageView":
                createRatingBar = createImageView(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "AutoCompleteTextView":
                createRatingBar = createAutoCompleteTextView(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "CheckBox":
                createRatingBar = createCheckBox(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "EditText":
                createRatingBar = createEditText(context2, attributeSet);
                b(createRatingBar, str);
                break;
            case "Button":
                createRatingBar = createButton(context2, attributeSet);
                b(createRatingBar, str);
                break;
            default:
                createRatingBar = createView(context2, str, attributeSet);
                break;
        }
        if (createRatingBar == null && context != context2) {
            Object[] objArr = this.f13757a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = context2;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i2 = 0;
                    while (true) {
                        String[] strArr = f13755g;
                        if (i2 < 3) {
                            View a7 = a(context2, str, strArr[i2]);
                            if (a7 != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                createRatingBar = a7;
                            } else {
                                i2++;
                            }
                        } else {
                            createRatingBar = null;
                        }
                    }
                } else {
                    View a8 = a(context2, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    createRatingBar = a8;
                }
            } catch (Exception unused) {
                createRatingBar = null;
            } finally {
                objArr[0] = null;
                objArr[1] = null;
            }
        }
        if (createRatingBar != null) {
            Context context3 = createRatingBar.getContext();
            if ((context3 instanceof ContextWrapper) && AbstractC0181p0.hasOnClickListeners(createRatingBar)) {
                TypedArray obtainStyledAttributes2 = context3.obtainStyledAttributes(attributeSet, f13751c);
                String string = obtainStyledAttributes2.getString(0);
                if (string != null) {
                    createRatingBar.setOnClickListener(new d0(createRatingBar, string));
                }
                obtainStyledAttributes2.recycle();
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, f13752d);
                if (obtainStyledAttributes3.hasValue(0)) {
                    AbstractC0181p0.setAccessibilityHeading(createRatingBar, obtainStyledAttributes3.getBoolean(0, false));
                }
                obtainStyledAttributes3.recycle();
                TypedArray obtainStyledAttributes4 = context2.obtainStyledAttributes(attributeSet, f13753e);
                if (obtainStyledAttributes4.hasValue(0)) {
                    AbstractC0181p0.setAccessibilityPaneTitle(createRatingBar, obtainStyledAttributes4.getString(0));
                }
                obtainStyledAttributes4.recycle();
                TypedArray obtainStyledAttributes5 = context2.obtainStyledAttributes(attributeSet, f13754f);
                if (obtainStyledAttributes5.hasValue(0)) {
                    AbstractC0181p0.setScreenReaderFocusable(createRatingBar, obtainStyledAttributes5.getBoolean(0, false));
                }
                obtainStyledAttributes5.recycle();
            }
        }
        return createRatingBar;
    }

    public View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }
}
