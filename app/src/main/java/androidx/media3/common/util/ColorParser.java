package androidx.media3.common.util;

import P3.AbstractC0226a;
import P3.v;
import android.graphics.Color;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

@UnstableApi
/* loaded from: classes.dex */
public final class ColorParser {
    private static final Map<String, Integer> COLOR_MAP;
    private static final String RGB = "rgb";
    private static final String RGBA = "rgba";
    private static final Pattern RGB_PATTERN = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_INT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_FLOAT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    static {
        HashMap hashMap = new HashMap();
        COLOR_MAP = hashMap;
        A.i.w(-984833, hashMap, "aliceblue", -332841, "antiquewhite");
        hashMap.put("aqua", -16711681);
        hashMap.put("aquamarine", -8388652);
        A.i.w(-983041, hashMap, "azure", -657956, "beige");
        A.i.w(-6972, hashMap, "bisque", -16777216, "black");
        A.i.w(-5171, hashMap, "blanchedalmond", -16776961, "blue");
        A.i.w(-7722014, hashMap, "blueviolet", -5952982, "brown");
        A.i.w(-2180985, hashMap, "burlywood", -10510688, "cadetblue");
        A.i.w(-8388864, hashMap, "chartreuse", -2987746, "chocolate");
        A.i.w(-32944, hashMap, "coral", -10185235, "cornflowerblue");
        A.i.w(-1828, hashMap, "cornsilk", -2354116, "crimson");
        hashMap.put("cyan", -16711681);
        hashMap.put("darkblue", -16777077);
        A.i.w(-16741493, hashMap, "darkcyan", -4684277, "darkgoldenrod");
        hashMap.put("darkgray", -5658199);
        hashMap.put("darkgreen", -16751616);
        hashMap.put("darkgrey", -5658199);
        hashMap.put("darkkhaki", -4343957);
        A.i.w(-7667573, hashMap, "darkmagenta", -11179217, "darkolivegreen");
        A.i.w(-29696, hashMap, "darkorange", -6737204, "darkorchid");
        A.i.w(-7667712, hashMap, "darkred", -1468806, "darksalmon");
        A.i.w(-7357297, hashMap, "darkseagreen", -12042869, "darkslateblue");
        hashMap.put("darkslategray", -13676721);
        hashMap.put("darkslategrey", -13676721);
        hashMap.put("darkturquoise", -16724271);
        hashMap.put("darkviolet", -7077677);
        A.i.w(-60269, hashMap, "deeppink", -16728065, "deepskyblue");
        hashMap.put("dimgray", -9868951);
        hashMap.put("dimgrey", -9868951);
        hashMap.put("dodgerblue", -14774017);
        hashMap.put("firebrick", -5103070);
        A.i.w(-1296, hashMap, "floralwhite", -14513374, "forestgreen");
        hashMap.put("fuchsia", -65281);
        hashMap.put("gainsboro", -2302756);
        A.i.w(-460545, hashMap, "ghostwhite", -10496, "gold");
        hashMap.put("goldenrod", -2448096);
        hashMap.put("gray", -8355712);
        A.i.w(-16744448, hashMap, "green", -5374161, "greenyellow");
        hashMap.put("grey", -8355712);
        hashMap.put("honeydew", -983056);
        A.i.w(-38476, hashMap, "hotpink", -3318692, "indianred");
        A.i.w(-11861886, hashMap, "indigo", -16, "ivory");
        A.i.w(-989556, hashMap, "khaki", -1644806, "lavender");
        A.i.w(-3851, hashMap, "lavenderblush", -8586240, "lawngreen");
        A.i.w(-1331, hashMap, "lemonchiffon", -5383962, "lightblue");
        A.i.w(-1015680, hashMap, "lightcoral", -2031617, "lightcyan");
        hashMap.put("lightgoldenrodyellow", -329006);
        hashMap.put("lightgray", -2894893);
        hashMap.put("lightgreen", -7278960);
        hashMap.put("lightgrey", -2894893);
        A.i.w(-18751, hashMap, "lightpink", -24454, "lightsalmon");
        A.i.w(-14634326, hashMap, "lightseagreen", -7876870, "lightskyblue");
        hashMap.put("lightslategray", -8943463);
        hashMap.put("lightslategrey", -8943463);
        hashMap.put("lightsteelblue", -5192482);
        hashMap.put("lightyellow", -32);
        A.i.w(-16711936, hashMap, "lime", -13447886, "limegreen");
        hashMap.put("linen", -331546);
        hashMap.put("magenta", -65281);
        A.i.w(-8388608, hashMap, "maroon", -10039894, "mediumaquamarine");
        A.i.w(-16777011, hashMap, "mediumblue", -4565549, "mediumorchid");
        A.i.w(-7114533, hashMap, "mediumpurple", -12799119, "mediumseagreen");
        A.i.w(-8689426, hashMap, "mediumslateblue", -16713062, "mediumspringgreen");
        A.i.w(-12004916, hashMap, "mediumturquoise", -3730043, "mediumvioletred");
        A.i.w(-15132304, hashMap, "midnightblue", -655366, "mintcream");
        A.i.w(-6943, hashMap, "mistyrose", -6987, "moccasin");
        A.i.w(-8531, hashMap, "navajowhite", -16777088, "navy");
        A.i.w(-133658, hashMap, "oldlace", -8355840, "olive");
        A.i.w(-9728477, hashMap, "olivedrab", -23296, "orange");
        A.i.w(-47872, hashMap, "orangered", -2461482, "orchid");
        A.i.w(-1120086, hashMap, "palegoldenrod", -6751336, "palegreen");
        A.i.w(-5247250, hashMap, "paleturquoise", -2396013, "palevioletred");
        A.i.w(-4139, hashMap, "papayawhip", -9543, "peachpuff");
        A.i.w(-3308225, hashMap, "peru", -16181, "pink");
        A.i.w(-2252579, hashMap, "plum", -5185306, "powderblue");
        A.i.w(-8388480, hashMap, "purple", -10079335, "rebeccapurple");
        A.i.w(-65536, hashMap, "red", -4419697, "rosybrown");
        A.i.w(-12490271, hashMap, "royalblue", -7650029, "saddlebrown");
        A.i.w(-360334, hashMap, "salmon", -744352, "sandybrown");
        A.i.w(-13726889, hashMap, "seagreen", -2578, "seashell");
        A.i.w(-6270419, hashMap, "sienna", -4144960, "silver");
        A.i.w(-7876885, hashMap, "skyblue", -9807155, "slateblue");
        hashMap.put("slategray", -9404272);
        hashMap.put("slategrey", -9404272);
        hashMap.put("snow", -1286);
        hashMap.put("springgreen", -16711809);
        A.i.w(-12156236, hashMap, "steelblue", -2968436, "tan");
        A.i.w(-16744320, hashMap, "teal", -2572328, "thistle");
        A.i.w(-40121, hashMap, "tomato", 0, "transparent");
        A.i.w(-12525360, hashMap, "turquoise", -1146130, "violet");
        A.i.w(-663885, hashMap, "wheat", -1, "white");
        A.i.w(-657931, hashMap, "whitesmoke", -256, "yellow");
        hashMap.put("yellowgreen", -6632142);
    }

    private ColorParser() {
    }

    private static int parseColorInternal(String str, boolean z6) {
        v.checkArgument(!TextUtils.isEmpty(str));
        String replace = str.replace(StringUtils.SPACE, "");
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return (-16777216) | parseLong;
            }
            if (replace.length() == 9) {
                return ((parseLong & 255) << 24) | (parseLong >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (replace.startsWith(RGBA)) {
            Matcher matcher = (z6 ? RGBA_PATTERN_FLOAT_ALPHA : RGBA_PATTERN_INT_ALPHA).matcher(replace);
            if (matcher.matches()) {
                return Color.argb(z6 ? (int) (Float.parseFloat((String) v.checkNotNull(matcher.group(4))) * 255.0f) : Integer.parseInt((String) v.checkNotNull(matcher.group(4)), 10), Integer.parseInt((String) v.checkNotNull(matcher.group(1)), 10), Integer.parseInt((String) v.checkNotNull(matcher.group(2)), 10), Integer.parseInt((String) v.checkNotNull(matcher.group(3)), 10));
            }
        } else if (replace.startsWith(RGB)) {
            Matcher matcher2 = RGB_PATTERN.matcher(replace);
            if (matcher2.matches()) {
                return Color.rgb(Integer.parseInt((String) v.checkNotNull(matcher2.group(1)), 10), Integer.parseInt((String) v.checkNotNull(matcher2.group(2)), 10), Integer.parseInt((String) v.checkNotNull(matcher2.group(3)), 10));
            }
        } else {
            Integer num = COLOR_MAP.get(AbstractC0226a.toLowerCase(replace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }

    public static int parseCssColor(String str) {
        return parseColorInternal(str, true);
    }

    public static int parseTtmlColor(String str) {
        return parseColorInternal(str, false);
    }
}
