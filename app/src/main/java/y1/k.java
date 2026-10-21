package y1;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class k {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0379, code lost:
    
        r1 = new android.animation.Animator[r21.size()];
        r2 = r21.iterator();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0388, code lost:
    
        if (r2.hasNext() == false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x038a, code lost:
    
        r1[r12] = (android.animation.Animator) r2.next();
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0396, code lost:
    
        if (r31 != 0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0398, code lost:
    
        r30.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x039b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x039c, code lost:
    
        r30.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x039f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r21 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0375, code lost:
    
        if (r30 == null) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0377, code lost:
    
        if (r21 == null) goto L186;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0347 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator a(android.content.Context r25, android.content.res.Resources r26, android.content.res.Resources.Theme r27, android.content.res.XmlResourceParser r28, android.util.AttributeSet r29, android.animation.AnimatorSet r30, int r31, float r32) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.k.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, android.content.res.XmlResourceParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    public static PropertyValuesHolder b(TypedArray typedArray, int i2, int i7, int i8, String str) {
        PropertyValuesHolder ofFloat;
        TypedValue peekValue = typedArray.peekValue(i7);
        boolean z6 = peekValue != null;
        int i9 = z6 ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i8);
        boolean z7 = peekValue2 != null;
        int i10 = z7 ? peekValue2.type : 0;
        if (i2 == 4) {
            i2 = ((z6 && c(i9)) || (z7 && c(i10))) ? 3 : 0;
        }
        boolean z8 = i2 == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i2 == 2) {
            String string = typedArray.getString(i7);
            String string2 = typedArray.getString(i8);
            D.f[] createNodesFromPathData = D.g.createNodesFromPathData(string);
            D.f[] createNodesFromPathData2 = D.g.createNodesFromPathData(string2);
            if (createNodesFromPathData != null || createNodesFromPathData2 != null) {
                if (createNodesFromPathData != null) {
                    j jVar = new j();
                    if (createNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, jVar, createNodesFromPathData);
                    }
                    if (D.g.canMorph(createNodesFromPathData, createNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, jVar, createNodesFromPathData, createNodesFromPathData2);
                    }
                    throw new InflateException(b.c.l(" Can't morph from ", string, " to ", string2));
                }
                if (createNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new j(), createNodesFromPathData2);
                }
            }
            return null;
        }
        l lVar = i2 == 3 ? l.getInstance() : null;
        if (z8) {
            if (z6) {
                float dimension = i9 == 5 ? typedArray.getDimension(i7, 0.0f) : typedArray.getFloat(i7, 0.0f);
                if (z7) {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension, i10 == 5 ? typedArray.getDimension(i8, 0.0f) : typedArray.getFloat(i8, 0.0f));
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                ofFloat = PropertyValuesHolder.ofFloat(str, i10 == 5 ? typedArray.getDimension(i8, 0.0f) : typedArray.getFloat(i8, 0.0f));
            }
            propertyValuesHolder = ofFloat;
        } else if (z6) {
            int dimension2 = i9 == 5 ? (int) typedArray.getDimension(i7, 0.0f) : c(i9) ? typedArray.getColor(i7, 0) : typedArray.getInt(i7, 0);
            if (z7) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i10 == 5 ? (int) typedArray.getDimension(i8, 0.0f) : c(i10) ? typedArray.getColor(i8, 0) : typedArray.getInt(i8, 0));
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z7) {
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i10 == 5 ? (int) typedArray.getDimension(i8, 0.0f) : c(i10) ? typedArray.getColor(i8, 0) : typedArray.getInt(i8, 0));
        }
        if (propertyValuesHolder != null && lVar != null) {
            propertyValuesHolder.setEvaluator(lVar);
        }
        return propertyValuesHolder;
    }

    public static boolean c(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    public static ValueAnimator d(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, float f3, XmlResourceParser xmlResourceParser) {
        int i2 = 0;
        TypedArray obtainAttributes = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20969g);
        TypedArray obtainAttributes2 = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20973k);
        ValueAnimator valueAnimator = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long namedInt = C.v.getNamedInt(obtainAttributes, xmlResourceParser, "duration", 1, HttpStatus.SC_MULTIPLE_CHOICES);
        long namedInt2 = C.v.getNamedInt(obtainAttributes, xmlResourceParser, "startOffset", 2, 0);
        int namedInt3 = C.v.getNamedInt(obtainAttributes, xmlResourceParser, "valueType", 7, 4);
        if (C.v.hasAttribute(xmlResourceParser, "valueFrom") && C.v.hasAttribute(xmlResourceParser, "valueTo")) {
            if (namedInt3 == 4) {
                TypedValue peekValue = obtainAttributes.peekValue(5);
                boolean z6 = peekValue != null;
                int i7 = z6 ? peekValue.type : 0;
                TypedValue peekValue2 = obtainAttributes.peekValue(6);
                boolean z7 = peekValue2 != null;
                namedInt3 = ((z6 && c(i7)) || (z7 && c(z7 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder b7 = b(obtainAttributes, namedInt3, 5, 6, "");
            if (b7 != null) {
                valueAnimator.setValues(b7);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(C.v.getNamedInt(obtainAttributes, xmlResourceParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C.v.getNamedInt(obtainAttributes, xmlResourceParser, "repeatMode", 4, 1));
        if (obtainAttributes2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator;
            String namedString = C.v.getNamedString(obtainAttributes2, xmlResourceParser, "pathData", 1);
            if (namedString != null) {
                String namedString2 = C.v.getNamedString(obtainAttributes2, xmlResourceParser, "propertyXName", 2);
                String namedString3 = C.v.getNamedString(obtainAttributes2, xmlResourceParser, "propertyYName", 3);
                if (namedString2 == null && namedString3 == null) {
                    throw new InflateException(obtainAttributes2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path createPathFromPathData = D.g.createPathFromPathData(namedString);
                float f7 = 0.5f * f3;
                PathMeasure pathMeasure = new PathMeasure(createPathFromPathData, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f8 = 0.0f;
                do {
                    f8 += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f8));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(createPathFromPathData, false);
                int min = Math.min(100, ((int) (f8 / f7)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f9 = f8 / (min - 1);
                int i8 = 0;
                int i9 = 0;
                float f10 = 0.0f;
                while (true) {
                    if (i8 >= min) {
                        break;
                    }
                    int i10 = min;
                    pathMeasure2.getPosTan(f10 - ((Float) arrayList.get(i9)).floatValue(), fArr3, null);
                    fArr[i8] = fArr3[0];
                    fArr2[i8] = fArr3[1];
                    float f11 = f10 + f9;
                    int i11 = i9 + 1;
                    f10 = f11;
                    if (i11 < arrayList.size() && f10 > ((Float) arrayList.get(i11)).floatValue()) {
                        pathMeasure2.nextContour();
                        i9 = i11;
                    }
                    i8++;
                    min = i10;
                }
                PropertyValuesHolder ofFloat = namedString2 != null ? PropertyValuesHolder.ofFloat(namedString2, fArr) : null;
                PropertyValuesHolder ofFloat2 = namedString3 != null ? PropertyValuesHolder.ofFloat(namedString3, fArr2) : null;
                if (ofFloat == null) {
                    objectAnimator2.setValues(ofFloat2);
                } else if (ofFloat2 == null) {
                    objectAnimator2.setValues(ofFloat);
                } else {
                    objectAnimator2.setValues(ofFloat, ofFloat2);
                }
                i2 = 0;
            } else {
                objectAnimator2.setPropertyName(C.v.getNamedString(obtainAttributes2, xmlResourceParser, "propertyName", 0));
            }
        }
        int namedResourceId = C.v.getNamedResourceId(obtainAttributes, xmlResourceParser, "interpolator", i2, i2);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(AbstractC1878i.loadInterpolator(context, namedResourceId));
        }
        obtainAttributes.recycle();
        if (obtainAttributes2 != null) {
            obtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    public static Animator loadAnimator(Context context, int i2) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i2) : loadAnimator(context, context.getResources(), context.getTheme(), i2);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, int i2) throws Resources.NotFoundException {
        return loadAnimator(context, resources, theme, i2, 1.0f);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, int i2, float f3) throws Resources.NotFoundException {
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        Throwable th;
        XmlResourceParser animation;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                animation = resources.getAnimation(i2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            iOException = e3;
        } catch (XmlPullParserException e7) {
            xmlPullParserException = e7;
        }
        try {
            Animator a7 = a(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, f3);
            animation.close();
            return a7;
        } catch (IOException e8) {
            iOException = e8;
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
            notFoundException.initCause(iOException);
            throw notFoundException;
        } catch (XmlPullParserException e9) {
            xmlPullParserException = e9;
            Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
            notFoundException2.initCause(xmlPullParserException);
            throw notFoundException2;
        } catch (Throwable th3) {
            th = th3;
            xmlResourceParser = animation;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
                throw th;
            }
            throw th;
        }
    }
}
