package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5316a;

    /* renamed from: b, reason: collision with root package name */
    public final ConstraintAttribute$AttributeType f5317b;

    /* renamed from: c, reason: collision with root package name */
    public int f5318c;

    /* renamed from: d, reason: collision with root package name */
    public float f5319d;

    /* renamed from: e, reason: collision with root package name */
    public String f5320e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5321f;

    /* renamed from: g, reason: collision with root package name */
    public int f5322g;

    public b(String str, ConstraintAttribute$AttributeType constraintAttribute$AttributeType, Object obj, boolean z6) {
        this.f5317b = constraintAttribute$AttributeType;
        this.f5316a = z6;
        setValue(obj);
    }

    public static HashMap<String, b> extractAttributes(HashMap<String, b> hashMap, View view) {
        HashMap<String, b> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            b bVar = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new b(bVar, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (NoSuchMethodException e7) {
                e7.printStackTrace();
            } catch (InvocationTargetException e8) {
                e8.printStackTrace();
            }
        }
        return hashMap2;
    }

    public static void parse(Context context, XmlPullParser xmlPullParser, HashMap<String, b> hashMap) {
        ConstraintAttribute$AttributeType constraintAttribute$AttributeType;
        Object valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        ConstraintAttribute$AttributeType constraintAttribute$AttributeType2 = null;
        boolean z6 = false;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.CustomAttribute_attributeName) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                str = obtainStyledAttributes.getString(index);
                z6 = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                constraintAttribute$AttributeType2 = ConstraintAttribute$AttributeType.f5288n;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5285f;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5286j;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else {
                    int i7 = R.styleable.CustomAttribute_customPixelDimension;
                    ConstraintAttribute$AttributeType constraintAttribute$AttributeType3 = ConstraintAttribute$AttributeType.f5289p;
                    if (index == i7) {
                        obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                    } else if (index == R.styleable.CustomAttribute_customDimension) {
                        obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                    } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5284e;
                        valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5283b;
                        valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    } else if (index == R.styleable.CustomAttribute_customStringValue) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5287m;
                        valueOf = obtainStyledAttributes.getString(index);
                    } else if (index == R.styleable.CustomAttribute_customReference) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.f5290q;
                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                        if (resourceId == -1) {
                            resourceId = obtainStyledAttributes.getInt(index, -1);
                        }
                        valueOf = Integer.valueOf(resourceId);
                    }
                    constraintAttribute$AttributeType2 = constraintAttribute$AttributeType3;
                }
                Object obj2 = valueOf;
                constraintAttribute$AttributeType2 = constraintAttribute$AttributeType;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            hashMap.put(str, new b(str, constraintAttribute$AttributeType2, obj, z6));
        }
        obtainStyledAttributes.recycle();
    }

    public static void setAttributes(View view, HashMap<String, b> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            b bVar = hashMap.get(str);
            String k7 = !bVar.f5316a ? A.i.k("set", str) : str;
            try {
                int ordinal = bVar.f5317b.ordinal();
                Class<?> cls2 = Float.TYPE;
                Class<?> cls3 = Integer.TYPE;
                switch (ordinal) {
                    case 0:
                        cls.getMethod(k7, cls3).invoke(view, Integer.valueOf(bVar.f5318c));
                        break;
                    case 1:
                        cls.getMethod(k7, cls2).invoke(view, Float.valueOf(bVar.f5319d));
                        break;
                    case 2:
                        cls.getMethod(k7, cls3).invoke(view, Integer.valueOf(bVar.f5322g));
                        break;
                    case 3:
                        Method method = cls.getMethod(k7, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(bVar.f5322g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(k7, CharSequence.class).invoke(view, bVar.f5320e);
                        break;
                    case 5:
                        cls.getMethod(k7, Boolean.TYPE).invoke(view, Boolean.valueOf(bVar.f5321f));
                        break;
                    case 6:
                        cls.getMethod(k7, cls2).invoke(view, Float.valueOf(bVar.f5319d));
                        break;
                    case 7:
                        cls.getMethod(k7, cls3).invoke(view, Integer.valueOf(bVar.f5318c));
                        break;
                }
            } catch (IllegalAccessException e3) {
                StringBuilder t6 = A.i.t(" Custom Attribute \"", str, "\" not found on ");
                t6.append(cls.getName());
                Log.e("TransitionLayout", t6.toString());
                e3.printStackTrace();
            } catch (NoSuchMethodException e7) {
                Log.e("TransitionLayout", e7.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                Log.e("TransitionLayout", cls.getName() + " must have a method " + k7);
            } catch (InvocationTargetException e8) {
                StringBuilder t7 = A.i.t(" Custom Attribute \"", str, "\" not found on ");
                t7.append(cls.getName());
                Log.e("TransitionLayout", t7.toString());
                e8.printStackTrace();
            }
        }
    }

    public void setValue(Object obj) {
        switch (this.f5317b.ordinal()) {
            case 0:
            case 7:
                this.f5318c = ((Integer) obj).intValue();
                break;
            case 1:
                this.f5319d = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f5322g = ((Integer) obj).intValue();
                break;
            case 4:
                this.f5320e = (String) obj;
                break;
            case 5:
                this.f5321f = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f5319d = ((Float) obj).floatValue();
                break;
        }
    }

    public b(b bVar, Object obj) {
        this.f5316a = false;
        bVar.getClass();
        this.f5317b = bVar.f5317b;
        setValue(obj);
    }
}
