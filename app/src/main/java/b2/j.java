package b2;

import T1.C0330i;
import T1.G;
import T1.K;
import W1.s;
import W1.t;
import W1.u;
import Z1.k;
import a2.m;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.airbnb.lottie.model.DocumentData$Justification;
import g2.C0949c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import p.n;

/* loaded from: classes.dex */
public final class j extends AbstractC0642b {

    /* renamed from: A, reason: collision with root package name */
    public final C0649i f8454A;

    /* renamed from: B, reason: collision with root package name */
    public final C0649i f8455B;

    /* renamed from: C, reason: collision with root package name */
    public final HashMap f8456C;

    /* renamed from: D, reason: collision with root package name */
    public final n f8457D;

    /* renamed from: E, reason: collision with root package name */
    public final s f8458E;

    /* renamed from: F, reason: collision with root package name */
    public final G f8459F;

    /* renamed from: G, reason: collision with root package name */
    public final C0330i f8460G;

    /* renamed from: H, reason: collision with root package name */
    public final W1.f f8461H;

    /* renamed from: I, reason: collision with root package name */
    public u f8462I;

    /* renamed from: J, reason: collision with root package name */
    public final W1.f f8463J;

    /* renamed from: K, reason: collision with root package name */
    public u f8464K;

    /* renamed from: L, reason: collision with root package name */
    public final W1.f f8465L;

    /* renamed from: M, reason: collision with root package name */
    public u f8466M;

    /* renamed from: N, reason: collision with root package name */
    public final W1.f f8467N;

    /* renamed from: O, reason: collision with root package name */
    public u f8468O;

    /* renamed from: P, reason: collision with root package name */
    public u f8469P;

    /* renamed from: x, reason: collision with root package name */
    public final StringBuilder f8470x;

    /* renamed from: y, reason: collision with root package name */
    public final RectF f8471y;

    /* renamed from: z, reason: collision with root package name */
    public final Matrix f8472z;

    public j(G g7, C0645e c0645e) {
        super(g7, c0645e);
        Z1.b bVar;
        Z1.b bVar2;
        Z1.a aVar;
        Z1.a aVar2;
        this.f8470x = new StringBuilder(2);
        this.f8471y = new RectF();
        this.f8472z = new Matrix();
        C0649i c0649i = new C0649i(1);
        c0649i.setStyle(Paint.Style.FILL);
        this.f8454A = c0649i;
        C0649i c0649i2 = new C0649i(1);
        c0649i2.setStyle(Paint.Style.STROKE);
        this.f8455B = c0649i2;
        this.f8456C = new HashMap();
        this.f8457D = new n();
        this.f8459F = g7;
        this.f8460G = c0645e.f8426b;
        s createAnimation = c0645e.f8441q.createAnimation();
        this.f8458E = createAnimation;
        createAnimation.addUpdateListener(this);
        addAnimation(createAnimation);
        k kVar = c0645e.f8442r;
        if (kVar != null && (aVar2 = kVar.f4452a) != null) {
            W1.f createAnimation2 = aVar2.createAnimation();
            this.f8461H = createAnimation2;
            createAnimation2.addUpdateListener(this);
            addAnimation(createAnimation2);
        }
        if (kVar != null && (aVar = kVar.f4453b) != null) {
            W1.f createAnimation3 = aVar.createAnimation();
            this.f8463J = createAnimation3;
            createAnimation3.addUpdateListener(this);
            addAnimation(createAnimation3);
        }
        if (kVar != null && (bVar2 = kVar.f4454c) != null) {
            W1.f createAnimation4 = bVar2.createAnimation();
            this.f8465L = createAnimation4;
            createAnimation4.addUpdateListener(this);
            addAnimation(createAnimation4);
        }
        if (kVar == null || (bVar = kVar.f4455d) == null) {
            return;
        }
        W1.f createAnimation5 = bVar.createAnimation();
        this.f8467N = createAnimation5;
        createAnimation5.addUpdateListener(this);
        addAnimation(createAnimation5);
    }

    public static void c(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public static void d(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    @Override // b2.AbstractC0642b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        PointF pointF = K.f3557a;
        if (t6 == 1) {
            u uVar = this.f8462I;
            if (uVar != null) {
                removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f8462I = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f8462I = uVar2;
            uVar2.addUpdateListener(this);
            addAnimation(this.f8462I);
            return;
        }
        if (t6 == 2) {
            u uVar3 = this.f8464K;
            if (uVar3 != null) {
                removeAnimation(uVar3);
            }
            if (c0949c == null) {
                this.f8464K = null;
                return;
            }
            u uVar4 = new u(c0949c);
            this.f8464K = uVar4;
            uVar4.addUpdateListener(this);
            addAnimation(this.f8464K);
            return;
        }
        if (t6 == K.f3567k) {
            u uVar5 = this.f8466M;
            if (uVar5 != null) {
                removeAnimation(uVar5);
            }
            if (c0949c == null) {
                this.f8466M = null;
                return;
            }
            u uVar6 = new u(c0949c);
            this.f8466M = uVar6;
            uVar6.addUpdateListener(this);
            addAnimation(this.f8466M);
            return;
        }
        if (t6 == K.f3568l) {
            u uVar7 = this.f8468O;
            if (uVar7 != null) {
                removeAnimation(uVar7);
            }
            if (c0949c == null) {
                this.f8468O = null;
                return;
            }
            u uVar8 = new u(c0949c);
            this.f8468O = uVar8;
            uVar8.addUpdateListener(this);
            addAnimation(this.f8468O);
            return;
        }
        if (t6 == K.f3580x) {
            u uVar9 = this.f8469P;
            if (uVar9 != null) {
                removeAnimation(uVar9);
            }
            if (c0949c == null) {
                this.f8469P = null;
                return;
            }
            u uVar10 = new u(c0949c);
            this.f8469P = uVar10;
            uVar10.addUpdateListener(this);
            addAnimation(this.f8469P);
        }
    }

    @Override // b2.AbstractC0642b
    public final void drawLayer(Canvas canvas, Matrix matrix, int i2) {
        float f3;
        float f7;
        float f8;
        List list;
        int i7;
        String str;
        float floatValue;
        float f9;
        int i8;
        float f10;
        int i9;
        List list2;
        Y1.b bVar;
        float floatValue2;
        canvas.save();
        G g7 = this.f8459F;
        if (!g7.useTextGlyphs()) {
            canvas.setMatrix(matrix);
        }
        Y1.b bVar2 = (Y1.b) this.f8458E.getValue();
        C0330i c0330i = this.f8460G;
        Y1.c cVar = c0330i.getFonts().get(bVar2.f4340b);
        if (cVar == null) {
            canvas.restore();
            return;
        }
        u uVar = this.f8462I;
        C0649i c0649i = this.f8454A;
        if (uVar != null) {
            c0649i.setColor(((Integer) uVar.getValue()).intValue());
        } else {
            W1.f fVar = this.f8461H;
            if (fVar != null) {
                c0649i.setColor(((Integer) fVar.getValue()).intValue());
            } else {
                c0649i.setColor(bVar2.f4346h);
            }
        }
        u uVar2 = this.f8464K;
        C0649i c0649i2 = this.f8455B;
        if (uVar2 != null) {
            c0649i2.setColor(((Integer) uVar2.getValue()).intValue());
        } else {
            W1.f fVar2 = this.f8463J;
            if (fVar2 != null) {
                c0649i2.setColor(((Integer) fVar2.getValue()).intValue());
            } else {
                c0649i2.setColor(bVar2.f4347i);
            }
        }
        t tVar = this.f8414v;
        int intValue = ((tVar.getOpacity() == null ? 100 : ((Integer) tVar.getOpacity().getValue()).intValue()) * 255) / 100;
        c0649i.setAlpha(intValue);
        c0649i2.setAlpha(intValue);
        u uVar3 = this.f8466M;
        if (uVar3 != null) {
            c0649i2.setStrokeWidth(((Float) uVar3.getValue()).floatValue());
        } else {
            W1.f fVar3 = this.f8465L;
            if (fVar3 != null) {
                c0649i2.setStrokeWidth(((Float) fVar3.getValue()).floatValue());
            } else {
                c0649i2.setStrokeWidth(f2.h.dpScale() * bVar2.f4348j * f2.h.getScale(matrix));
            }
        }
        boolean useTextGlyphs = g7.useTextGlyphs();
        W1.f fVar4 = this.f8467N;
        int i10 = bVar2.f4343e;
        boolean z6 = bVar2.f4349k;
        DocumentData$Justification documentData$Justification = bVar2.f4342d;
        float f11 = bVar2.f4344f;
        String str2 = bVar2.f4339a;
        float f12 = bVar2.f4341c;
        if (useTextGlyphs) {
            u uVar4 = this.f8469P;
            if (uVar4 != null) {
                f12 = ((Float) uVar4.getValue()).floatValue();
            }
            float f13 = f12 / 100.0f;
            float scale = f2.h.getScale(matrix);
            float dpScale = f2.h.dpScale() * f11;
            List asList = Arrays.asList(str2.replaceAll("\r\n", StringUtils.CR).replaceAll(StringUtils.LF, StringUtils.CR).split(StringUtils.CR));
            int size = asList.size();
            int i11 = 0;
            while (i11 < size) {
                String str3 = (String) asList.get(i11);
                List list3 = asList;
                W1.f fVar5 = fVar4;
                boolean z7 = z6;
                float f14 = 0.0f;
                int i12 = 0;
                while (i12 < str3.length()) {
                    int i13 = i12;
                    int i14 = size;
                    Y1.d dVar = (Y1.d) c0330i.getCharacters().get(Y1.d.hashFor(str3.charAt(i12), cVar.getFamily(), cVar.getStyle()));
                    if (dVar != null) {
                        f14 = (float) ((dVar.getWidth() * f13 * f2.h.dpScale() * scale) + f14);
                    }
                    i12 = i13 + 1;
                    size = i14;
                }
                int i15 = size;
                canvas.save();
                int ordinal = documentData$Justification.ordinal();
                if (ordinal == 1) {
                    f9 = 0.0f;
                    canvas.translate(-f14, 0.0f);
                } else if (ordinal != 2) {
                    f9 = 0.0f;
                } else {
                    f9 = 0.0f;
                    canvas.translate((-f14) / 2.0f, 0.0f);
                }
                canvas.translate(f9, (i11 * dpScale) - (((i15 - 1) * dpScale) / 2.0f));
                int i16 = 0;
                while (i16 < str3.length()) {
                    Y1.d dVar2 = (Y1.d) c0330i.getCharacters().get(Y1.d.hashFor(str3.charAt(i16), cVar.getFamily(), cVar.getStyle()));
                    if (dVar2 == null) {
                        bVar = bVar2;
                        i8 = i16;
                        f10 = scale;
                        i9 = i11;
                    } else {
                        HashMap hashMap = this.f8456C;
                        if (hashMap.containsKey(dVar2)) {
                            list2 = (List) hashMap.get(dVar2);
                            i8 = i16;
                            f10 = scale;
                            i9 = i11;
                        } else {
                            List<m> shapes = dVar2.getShapes();
                            i8 = i16;
                            int size2 = shapes.size();
                            f10 = scale;
                            ArrayList arrayList = new ArrayList(size2);
                            i9 = i11;
                            int i17 = 0;
                            while (i17 < size2) {
                                arrayList.add(new V1.e(g7, this, shapes.get(i17)));
                                i17++;
                                shapes = shapes;
                                size2 = size2;
                            }
                            hashMap.put(dVar2, arrayList);
                            list2 = arrayList;
                        }
                        int i18 = 0;
                        while (i18 < list2.size()) {
                            Path path = ((V1.e) list2.get(i18)).getPath();
                            path.computeBounds(this.f8471y, false);
                            Matrix matrix2 = this.f8472z;
                            matrix2.set(matrix);
                            int i19 = i18;
                            Y1.b bVar3 = bVar2;
                            matrix2.preTranslate(0.0f, (-bVar2.f4345g) * f2.h.dpScale());
                            matrix2.preScale(f13, f13);
                            path.transform(matrix2);
                            if (z7) {
                                d(path, c0649i, canvas);
                                d(path, c0649i2, canvas);
                            } else {
                                d(path, c0649i2, canvas);
                                d(path, c0649i, canvas);
                            }
                            i18 = i19 + 1;
                            bVar2 = bVar3;
                        }
                        bVar = bVar2;
                        float dpScale2 = f2.h.dpScale() * ((float) dVar2.getWidth()) * f13 * f10;
                        float f15 = i10 / 10.0f;
                        u uVar5 = this.f8468O;
                        if (uVar5 != null) {
                            floatValue2 = ((Float) uVar5.getValue()).floatValue();
                        } else {
                            if (fVar5 != null) {
                                floatValue2 = ((Float) fVar5.getValue()).floatValue();
                            }
                            canvas.translate((f15 * f10) + dpScale2, 0.0f);
                        }
                        f15 += floatValue2;
                        canvas.translate((f15 * f10) + dpScale2, 0.0f);
                    }
                    i16 = i8 + 1;
                    scale = f10;
                    i11 = i9;
                    bVar2 = bVar;
                }
                canvas.restore();
                i11++;
                asList = list3;
                fVar4 = fVar5;
                z6 = z7;
                size = i15;
                bVar2 = bVar2;
            }
        } else {
            float scale2 = f2.h.getScale(matrix);
            Typeface typeface = g7.getTypeface(cVar.getFamily(), cVar.getStyle());
            if (typeface != null) {
                g7.getTextDelegate();
                c0649i.setTypeface(typeface);
                u uVar6 = this.f8469P;
                if (uVar6 != null) {
                    f12 = ((Float) uVar6.getValue()).floatValue();
                }
                c0649i.setTextSize(f2.h.dpScale() * f12);
                c0649i2.setTypeface(c0649i.getTypeface());
                c0649i2.setTextSize(c0649i.getTextSize());
                float dpScale3 = f2.h.dpScale() * f11;
                List asList2 = Arrays.asList(str2.replaceAll("\r\n", StringUtils.CR).replaceAll(StringUtils.LF, StringUtils.CR).split(StringUtils.CR));
                int size3 = asList2.size();
                int i20 = 0;
                while (i20 < size3) {
                    String str4 = (String) asList2.get(i20);
                    float measureText = c0649i2.measureText(str4);
                    int ordinal2 = documentData$Justification.ordinal();
                    if (ordinal2 == 1) {
                        f3 = 0.0f;
                        canvas.translate(-measureText, 0.0f);
                    } else if (ordinal2 != 2) {
                        f3 = 0.0f;
                    } else {
                        f3 = 0.0f;
                        canvas.translate((-measureText) / 2.0f, 0.0f);
                    }
                    canvas.translate(f3, (i20 * dpScale3) - (((size3 - 1) * dpScale3) / 2.0f));
                    int i21 = 0;
                    while (i21 < str4.length()) {
                        int codePointAt = str4.codePointAt(i21);
                        int charCount = Character.charCount(codePointAt) + i21;
                        while (true) {
                            if (charCount >= str4.length()) {
                                f7 = dpScale3;
                                f8 = scale2;
                                break;
                            }
                            int codePointAt2 = str4.codePointAt(charCount);
                            f7 = dpScale3;
                            f8 = scale2;
                            if (Character.getType(codePointAt2) != 16 && Character.getType(codePointAt2) != 27 && Character.getType(codePointAt2) != 6 && Character.getType(codePointAt2) != 28 && Character.getType(codePointAt2) != 19) {
                                break;
                            }
                            charCount += Character.charCount(codePointAt2);
                            codePointAt = (codePointAt * 31) + codePointAt2;
                            dpScale3 = f7;
                            scale2 = f8;
                        }
                        long j7 = codePointAt;
                        n nVar = this.f8457D;
                        if (nVar.containsKey(j7)) {
                            str = (String) nVar.get(j7);
                            list = asList2;
                            i7 = size3;
                        } else {
                            StringBuilder sb = this.f8470x;
                            list = asList2;
                            sb.setLength(0);
                            int i22 = i21;
                            while (i22 < charCount) {
                                int i23 = size3;
                                int codePointAt3 = str4.codePointAt(i22);
                                sb.appendCodePoint(codePointAt3);
                                i22 += Character.charCount(codePointAt3);
                                size3 = i23;
                            }
                            i7 = size3;
                            String sb2 = sb.toString();
                            nVar.put(j7, sb2);
                            str = sb2;
                        }
                        i21 += str.length();
                        if (z6) {
                            c(str, c0649i, canvas);
                            c(str, c0649i2, canvas);
                        } else {
                            c(str, c0649i2, canvas);
                            c(str, c0649i, canvas);
                        }
                        float measureText2 = c0649i.measureText(str, 0, 1);
                        float f16 = i10 / 10.0f;
                        u uVar7 = this.f8468O;
                        if (uVar7 != null) {
                            floatValue = ((Float) uVar7.getValue()).floatValue();
                        } else if (fVar4 != null) {
                            floatValue = ((Float) fVar4.getValue()).floatValue();
                        } else {
                            canvas.translate((f16 * f8) + measureText2, 0.0f);
                            dpScale3 = f7;
                            scale2 = f8;
                            asList2 = list;
                            size3 = i7;
                        }
                        f16 += floatValue;
                        canvas.translate((f16 * f8) + measureText2, 0.0f);
                        dpScale3 = f7;
                        scale2 = f8;
                        asList2 = list;
                        size3 = i7;
                    }
                    canvas.setMatrix(matrix);
                    i20++;
                    dpScale3 = dpScale3;
                    asList2 = asList2;
                }
            }
        }
        canvas.restore();
    }

    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        C0330i c0330i = this.f8460G;
        rectF.set(0.0f, 0.0f, c0330i.getBounds().width(), c0330i.getBounds().height());
    }
}
