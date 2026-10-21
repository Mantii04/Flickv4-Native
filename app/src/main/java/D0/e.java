package D0;

import Q3.C0248s;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.XmlPullParserUtil;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f849a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f850b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f851c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r7 == (-1)) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static D0.d a(java.lang.String r22) {
        /*
            org.xmlpull.v1.XmlPullParserFactory r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance()
            org.xmlpull.v1.XmlPullParser r0 = r0.newPullParser()
            java.io.StringReader r1 = new java.io.StringReader
            r2 = r22
            r1.<init>(r2)
            r0.setInput(r1)
            r0.next()
            java.lang.String r1 = "x:xmpmeta"
            boolean r2 = androidx.media3.common.util.XmlPullParserUtil.isStartTag(r0, r1)
            r3 = 0
            if (r2 == 0) goto Ld5
            com.google.common.collect.ImmutableList r2 = com.google.common.collect.ImmutableList.of()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r4
        L28:
            r0.next()
            java.lang.String r8 = "rdf:Description"
            boolean r8 = androidx.media3.common.util.XmlPullParserUtil.isStartTag(r0, r8)
            if (r8 == 0) goto La1
            java.lang.String[] r2 = D0.e.f849a
            r6 = 0
            r7 = r6
        L37:
            r8 = 4
            if (r7 >= r8) goto La0
            r9 = r2[r7]
            java.lang.String r9 = androidx.media3.common.util.XmlPullParserUtil.getAttributeValue(r0, r9)
            if (r9 == 0) goto L9d
            int r2 = java.lang.Integer.parseInt(r9)
            r7 = 1
            if (r2 != r7) goto La0
            java.lang.String[] r2 = D0.e.f850b
            r7 = r6
        L4c:
            if (r7 >= r8) goto L60
            r9 = r2[r7]
            java.lang.String r9 = androidx.media3.common.util.XmlPullParserUtil.getAttributeValue(r0, r9)
            if (r9 == 0) goto L62
            long r7 = java.lang.Long.parseLong(r9)
            r9 = -1
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 != 0) goto L65
        L60:
            r7 = r4
            goto L65
        L62:
            int r7 = r7 + 1
            goto L4c
        L65:
            java.lang.String[] r2 = D0.e.f851c
        L67:
            r9 = 2
            if (r6 >= r9) goto L97
            r9 = r2[r6]
            java.lang.String r9 = androidx.media3.common.util.XmlPullParserUtil.getAttributeValue(r0, r9)
            if (r9 == 0) goto L94
            long r13 = java.lang.Long.parseLong(r9)
            D0.c r15 = new D0.c
            java.lang.String r16 = "image/jpeg"
            java.lang.String r17 = "Primary"
            r18 = 0
            r20 = 0
            r15.<init>(r16, r17, r18, r20)
            r2 = r15
            D0.c r10 = new D0.c
            r15 = 0
            java.lang.String r11 = "video/mp4"
            java.lang.String r12 = "MotionPhoto"
            r10.<init>(r11, r12, r13, r15)
            com.google.common.collect.ImmutableList r2 = com.google.common.collect.ImmutableList.of(r2, r10)
            goto L9b
        L94:
            int r6 = r6 + 1
            goto L67
        L97:
            com.google.common.collect.ImmutableList r2 = com.google.common.collect.ImmutableList.of()
        L9b:
            r6 = r7
            goto Lc2
        L9d:
            int r7 = r7 + 1
            goto L37
        La0:
            return r3
        La1:
            java.lang.String r8 = "Container:Directory"
            boolean r8 = androidx.media3.common.util.XmlPullParserUtil.isStartTag(r0, r8)
            if (r8 == 0) goto Lb2
            java.lang.String r2 = "Container"
            java.lang.String r8 = "Item"
            com.google.common.collect.ImmutableList r2 = b(r0, r2, r8)
            goto Lc2
        Lb2:
            java.lang.String r8 = "GContainer:Directory"
            boolean r8 = androidx.media3.common.util.XmlPullParserUtil.isStartTag(r0, r8)
            if (r8 == 0) goto Lc2
            java.lang.String r2 = "GContainer"
            java.lang.String r8 = "GContainerItem"
            com.google.common.collect.ImmutableList r2 = b(r0, r2, r8)
        Lc2:
            boolean r8 = androidx.media3.common.util.XmlPullParserUtil.isEndTag(r0, r1)
            if (r8 == 0) goto L28
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto Lcf
            return r3
        Lcf:
            D0.d r0 = new D0.d
            r0.<init>(r6, r2)
            return r0
        Ld5:
            java.lang.String r0 = "Couldn't find xmp metadata"
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedContainer(r0, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: D0.e.a(java.lang.String):D0.d");
    }

    public static ImmutableList b(XmlPullParser xmlPullParser, String str, String str2) {
        C0248s builder = ImmutableList.builder();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat3);
                String attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat4);
                String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat5);
                String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat6);
                if (attributeValue == null || attributeValue2 == null) {
                    return ImmutableList.of();
                }
                builder.add((Object) new c(attributeValue, attributeValue2, attributeValue3 != null ? Long.parseLong(attributeValue3) : 0L, attributeValue4 != null ? Long.parseLong(attributeValue4) : 0L));
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, concat2));
        return builder.build();
    }

    public static boolean isMotionPhotoXmp(String str) {
        if (str == null) {
            return false;
        }
        String[] strArr = f849a;
        for (int i2 = 0; i2 < 4; i2++) {
            if (str.contains(strArr[i2] + "=\"1\"")) {
                return true;
            }
        }
        return false;
    }

    public static d parse(String str) throws IOException {
        try {
            return a(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            Log.w("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }
}
