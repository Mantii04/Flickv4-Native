package Y0;

import P3.v;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f4273a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4274b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4275c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4276d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4277e;

    /* renamed from: f, reason: collision with root package name */
    public final i f4278f;

    /* renamed from: g, reason: collision with root package name */
    public final String[] f4279g;

    /* renamed from: h, reason: collision with root package name */
    public final String f4280h;

    /* renamed from: i, reason: collision with root package name */
    public final String f4281i;

    /* renamed from: j, reason: collision with root package name */
    public final c f4282j;

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f4283k;

    /* renamed from: l, reason: collision with root package name */
    public final HashMap f4284l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f4285m;

    public c(String str, String str2, long j7, long j8, i iVar, String[] strArr, String str3, String str4, c cVar) {
        this.f4273a = str;
        this.f4274b = str2;
        this.f4281i = str4;
        this.f4278f = iVar;
        this.f4279g = strArr;
        this.f4275c = str2 != null;
        this.f4276d = j7;
        this.f4277e = j8;
        this.f4280h = (String) v.checkNotNull(str3);
        this.f4282j = cVar;
        this.f4283k = new HashMap();
        this.f4284l = new HashMap();
    }

    public static SpannableStringBuilder b(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            Cue.Builder builder = new Cue.Builder();
            builder.setText(new SpannableStringBuilder());
            treeMap.put(str, builder);
        }
        return (SpannableStringBuilder) v.checkNotNull(((Cue.Builder) treeMap.get(str)).getText());
    }

    public static c buildNode(String str, long j7, long j8, i iVar, String[] strArr, String str2, String str3, c cVar) {
        return new c(str, null, j7, j8, iVar, strArr, str2, str3, cVar);
    }

    public static c buildTextNode(String str) {
        return new c(null, str.replaceAll("\r\n", StringUtils.LF).replaceAll(" *\n *", StringUtils.LF).replaceAll(StringUtils.LF, StringUtils.SPACE).replaceAll("[ \t\\x0B\f\r]+", StringUtils.SPACE), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public final void a(TreeSet treeSet, boolean z6) {
        String str = this.f4273a;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z6 || equals || (equals2 && this.f4281i != null)) {
            long j7 = this.f4276d;
            if (j7 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j7));
            }
            long j8 = this.f4277e;
            if (j8 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j8));
            }
        }
        if (this.f4285m == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f4285m.size(); i2++) {
            ((c) this.f4285m.get(i2)).a(treeSet, z6 || equals);
        }
    }

    public void addChild(c cVar) {
        if (this.f4285m == null) {
            this.f4285m = new ArrayList();
        }
        this.f4285m.add(cVar);
    }

    public final void c(long j7, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f4280h;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (isActive(j7) && "div".equals(this.f4273a) && (str2 = this.f4281i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            getChild(i2).c(j7, str, arrayList);
        }
    }

    public final void d(long j7, Map map, Map map2, String str, TreeMap treeMap) {
        if (isActive(j7)) {
            String str2 = this.f4280h;
            String str3 = "".equals(str2) ? str : str2;
            Iterator it = this.f4284l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str4 = (String) entry.getKey();
                HashMap hashMap = this.f4283k;
                int intValue = hashMap.containsKey(str4) ? ((Integer) hashMap.get(str4)).intValue() : 0;
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (intValue != intValue2) {
                    Cue.Builder builder = (Cue.Builder) v.checkNotNull((Cue.Builder) treeMap.get(str4));
                    int i2 = ((g) v.checkNotNull((g) map2.get(str3))).f4309j;
                    i resolveStyle = h.resolveStyle(this.f4278f, this.f4279g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) builder.getText();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        builder.setText(spannableStringBuilder);
                    }
                    SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                    if (resolveStyle != null) {
                        h.applyStylesToSpan(spannableStringBuilder2, intValue, intValue2, resolveStyle, this.f4282j, map, i2);
                        if ("p".equals(this.f4273a)) {
                            if (resolveStyle.getShearPercentage() != Float.MAX_VALUE) {
                                builder.setShearDegrees((resolveStyle.getShearPercentage() * (-90.0f)) / 100.0f);
                            }
                            if (resolveStyle.getTextAlign() != null) {
                                builder.setTextAlignment(resolveStyle.getTextAlign());
                            }
                            if (resolveStyle.getMultiRowAlign() != null) {
                                builder.setMultiRowAlignment(resolveStyle.getMultiRowAlign());
                            }
                        }
                    }
                }
            }
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                getChild(i7).d(j7, map, map2, str3, treeMap);
            }
        }
    }

    public final void e(long j7, boolean z6, String str, TreeMap treeMap) {
        boolean z7;
        TreeMap treeMap2;
        long j8;
        HashMap hashMap = this.f4283k;
        hashMap.clear();
        HashMap hashMap2 = this.f4284l;
        hashMap2.clear();
        String str2 = this.f4273a;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f4280h;
        String str4 = "".equals(str3) ? str : str3;
        if (this.f4275c && z6) {
            b(str4, treeMap).append((CharSequence) v.checkNotNull(this.f4274b));
            return;
        }
        if (CmcdConfiguration.KEY_BITRATE.equals(str2) && z6) {
            b(str4, treeMap).append('\n');
            return;
        }
        if (isActive(j7)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                hashMap.put((String) entry.getKey(), Integer.valueOf(((CharSequence) v.checkNotNull(((Cue.Builder) entry.getValue()).getText())).length()));
            }
            boolean equals = "p".equals(str2);
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                c child = getChild(i2);
                if (z6 || equals) {
                    z7 = true;
                    treeMap2 = treeMap;
                    j8 = j7;
                } else {
                    z7 = false;
                    j8 = j7;
                    treeMap2 = treeMap;
                }
                child.e(j8, z7, str4, treeMap2);
            }
            if (equals) {
                SpannableStringBuilder b7 = b(str4, treeMap);
                int length = b7.length() - 1;
                while (length >= 0 && b7.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && b7.charAt(length) != '\n') {
                    b7.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                hashMap2.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) v.checkNotNull(((Cue.Builder) entry2.getValue()).getText())).length()));
            }
        }
    }

    public c getChild(int i2) {
        ArrayList arrayList = this.f4285m;
        if (arrayList != null) {
            return (c) arrayList.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getChildCount() {
        ArrayList arrayList = this.f4285m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public List<Cue> getCues(long j7, Map<String, i> map, Map<String, g> map2, Map<String, String> map3) {
        ArrayList arrayList = new ArrayList();
        c(j7, this.f4280h, arrayList);
        TreeMap treeMap = new TreeMap();
        e(j7, false, this.f4280h, treeMap);
        d(j7, map, map2, this.f4280h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                g gVar = (g) v.checkNotNull(map2.get(pair.first));
                arrayList2.add(new Cue.Builder().setBitmap(decodeByteArray).setPosition(gVar.f4301b).setPositionAnchor(0).setLine(gVar.f4302c, 0).setLineAnchor(gVar.f4304e).setSize(gVar.f4305f).setBitmapHeight(gVar.f4306g).setVerticalType(gVar.f4309j).build());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            g gVar2 = (g) v.checkNotNull(map2.get(entry.getKey()));
            Cue.Builder builder = (Cue.Builder) entry.getValue();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) v.checkNotNull(builder.getText());
            for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), (CharSequence) "");
            }
            for (int i2 = 0; i2 < spannableStringBuilder.length(); i2++) {
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i7 = i2 + 1;
                    int i8 = i7;
                    while (i8 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i8) == ' ') {
                        i8++;
                    }
                    int i9 = i8 - i7;
                    if (i9 > 0) {
                        spannableStringBuilder.delete(i2, i9 + i2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i10 = 0; i10 < spannableStringBuilder.length() - 1; i10++) {
                if (spannableStringBuilder.charAt(i10) == '\n') {
                    int i11 = i10 + 1;
                    if (spannableStringBuilder.charAt(i11) == ' ') {
                        spannableStringBuilder.delete(i11, i10 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i12 = 0; i12 < spannableStringBuilder.length() - 1; i12++) {
                if (spannableStringBuilder.charAt(i12) == ' ') {
                    int i13 = i12 + 1;
                    if (spannableStringBuilder.charAt(i13) == '\n') {
                        spannableStringBuilder.delete(i12, i13);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            builder.setLine(gVar2.f4302c, gVar2.f4303d);
            builder.setLineAnchor(gVar2.f4304e);
            builder.setPosition(gVar2.f4301b);
            builder.setSize(gVar2.f4305f);
            builder.setTextSize(gVar2.f4308i, gVar2.f4307h);
            builder.setVerticalType(gVar2.f4309j);
            arrayList2.add(builder.build());
        }
        return arrayList2;
    }

    public long[] getEventTimesUs() {
        TreeSet treeSet = new TreeSet();
        int i2 = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i2] = ((Long) it.next()).longValue();
            i2++;
        }
        return jArr;
    }

    public String[] getStyleIds() {
        return this.f4279g;
    }

    public boolean isActive(long j7) {
        long j8 = this.f4276d;
        long j9 = this.f4277e;
        if (j8 == C.TIME_UNSET && j9 == C.TIME_UNSET) {
            return true;
        }
        if (j8 <= j7 && j9 == C.TIME_UNSET) {
            return true;
        }
        if (j8 != C.TIME_UNSET || j7 >= j9) {
            return j8 <= j7 && j7 < j9;
        }
        return true;
    }
}
