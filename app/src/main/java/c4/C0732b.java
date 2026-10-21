package c4;

import A.i;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* renamed from: c4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0732b {

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f8962b = Pattern.compile("-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?");

    /* renamed from: c, reason: collision with root package name */
    public static final C0733c f8963c = new C0733c();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8964a;

    public C0732b() {
        this.f8964a = new HashMap();
    }

    public static com.imsdk.a.a.a.b b(String str, String str2, Object obj) {
        if (obj == null) {
            return new com.imsdk.a.a.a.b("JSONObject[" + k(str) + "] is not a " + str2 + " (null).", null);
        }
        if ((obj instanceof Map) || (obj instanceof Iterable) || (obj instanceof C0732b)) {
            return new com.imsdk.a.a.a.b("JSONObject[" + k(str) + "] is not a " + str2 + " (" + obj.getClass() + ").", null);
        }
        return new com.imsdk.a.a.a.b("JSONObject[" + k(str) + "] is not a " + str2 + " (" + obj.getClass() + " : " + obj + ").", null);
    }

    public static Annotation c(Method method) {
        if (method == null) {
            return null;
        }
        if (method.isAnnotationPresent(InterfaceC0735e.class)) {
            return method.getAnnotation(InterfaceC0735e.class);
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (declaringClass.getSuperclass() == null) {
            return null;
        }
        for (Class<?> cls : declaringClass.getInterfaces()) {
            try {
                return c(cls.getMethod(method.getName(), method.getParameterTypes()));
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        try {
            return c(declaringClass.getSuperclass().getMethod(method.getName(), method.getParameterTypes()));
        } catch (NoSuchMethodException | SecurityException unused2) {
            return null;
        }
    }

    public static final void d(int i2, Writer writer) {
        for (int i7 = 0; i7 < i2; i7++) {
            writer.write(32);
        }
    }

    public static final void e(Writer writer, Object obj, int i2, int i7) {
        if (obj == null || obj.equals(null)) {
            writer.write("null");
            return;
        }
        if (obj instanceof Number) {
            String a7 = a((Number) obj);
            if (f8962b.matcher(a7).matches()) {
                writer.write(a7);
                return;
            } else {
                a(a7, writer);
                return;
            }
        }
        if (obj instanceof Boolean) {
            writer.write(obj.toString());
            return;
        }
        if (obj instanceof Enum) {
            writer.write(k(((Enum) obj).name()));
            return;
        }
        if (obj instanceof C0732b) {
            ((C0732b) obj).a(writer, i2, i7);
            return;
        }
        if (obj instanceof C0731a) {
            ((C0731a) obj).a(writer, i2, i7);
            return;
        }
        if (obj instanceof Map) {
            new C0732b((Map) obj).a(writer, i2, i7);
            return;
        }
        if (obj instanceof Collection) {
            new C0731a((Collection) obj).a(writer, i2, i7);
        } else if (obj.getClass().isArray()) {
            new C0731a(obj).a(writer, i2, i7);
        } else {
            a(obj.toString(), writer);
        }
    }

    public static int g(Method method, Class cls) {
        int g7;
        if (method == null) {
            return -1;
        }
        if (method.isAnnotationPresent(cls)) {
            return 1;
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (declaringClass.getSuperclass() == null) {
            return -1;
        }
        for (Class<?> cls2 : declaringClass.getInterfaces()) {
            try {
                g7 = g(cls2.getMethod(method.getName(), method.getParameterTypes()), cls);
            } catch (NoSuchMethodException | SecurityException unused) {
            }
            if (g7 > 0) {
                return g7 + 1;
            }
        }
        try {
            int g8 = g(declaringClass.getSuperclass().getMethod(method.getName(), method.getParameterTypes()), cls);
            if (g8 > 0) {
                return g8 + 1;
            }
            return -1;
        } catch (NoSuchMethodException | SecurityException unused2) {
            return -1;
        }
    }

    public static Object h(Object obj, Set set) {
        try {
            C0733c c0733c = f8963c;
            if (c0733c.equals(obj)) {
                return c0733c;
            }
            if ((obj instanceof C0732b) || (obj instanceof C0731a) || c0733c.equals(obj) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof BigInteger) || (obj instanceof BigDecimal) || (obj instanceof Enum)) {
                return obj;
            }
            if (obj instanceof Collection) {
                return new C0731a((Collection) obj);
            }
            if (obj.getClass().isArray()) {
                return new C0731a(obj);
            }
            if (obj instanceof Map) {
                return new C0732b((Map) obj);
            }
            Package r02 = obj.getClass().getPackage();
            String name = r02 != null ? r02.getName() : "";
            if (!name.startsWith("java.") && !name.startsWith("javax.") && obj.getClass().getClassLoader() != null) {
                if (set == null) {
                    return new C0732b(obj);
                }
                C0732b c0732b = new C0732b();
                c0732b.f(obj, set);
                return c0732b;
            }
            return obj.toString();
        } catch (com.imsdk.a.a.a.b e3) {
            throw e3;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String k(String str) {
        try {
            return a(str, (Writer) new StringWriter()).toString();
        } catch (IOException unused) {
            return "";
        }
    }

    public static boolean m(String str) {
        return str.indexOf(46) > -1 || str.indexOf(101) > -1 || str.indexOf(69) > -1 || "-0".equals(str);
    }

    public static Number n(String str) {
        String str2 = "0";
        String concat = str.startsWith(".") ? "0".concat(str) : str;
        if (concat.startsWith("-.")) {
            concat = "-0." + concat.substring(2);
        }
        char charAt = concat.charAt(0);
        if ((charAt < '0' || charAt > '9') && charAt != '-') {
            throw new NumberFormatException(i.l("val [", str, "] is not a valid number."));
        }
        if (m(concat)) {
            try {
                try {
                    BigDecimal bigDecimal = new BigDecimal(concat);
                    return (charAt == '-' && BigDecimal.ZERO.compareTo(bigDecimal) == 0) ? Double.valueOf(-0.0d) : bigDecimal;
                } catch (NumberFormatException unused) {
                    throw new NumberFormatException(i.l("val [", str, "] is not a valid number."));
                }
            } catch (NumberFormatException unused2) {
                Double valueOf = Double.valueOf(concat);
                if (!valueOf.isNaN() && !valueOf.isInfinite()) {
                    return valueOf;
                }
                throw new NumberFormatException("val [" + str + "] is not a valid number.");
            }
        }
        if (str.equals("-")) {
            str2 = str;
        } else {
            int i2 = str.charAt(0) == '-' ? 1 : 0;
            int i7 = i2;
            while (true) {
                if (i7 < str.length()) {
                    if (str.charAt(i7) != '0') {
                        str2 = str.substring(i7);
                        if (i2 != 0) {
                            str2 = "-".concat(str2);
                        }
                    } else {
                        i7++;
                    }
                } else if (i2 != 0) {
                    str2 = "-0";
                }
            }
        }
        char charAt2 = str2.charAt(0);
        if (charAt2 == '0' && str2.length() > 1) {
            char charAt3 = str2.charAt(1);
            if (charAt3 >= '0' && charAt3 <= '9') {
                throw new NumberFormatException(i.l("val [", str, "] is not a valid number."));
            }
        } else if (charAt2 == '-' && str2.length() > 2) {
            char charAt4 = str2.charAt(1);
            char charAt5 = str2.charAt(2);
            if (charAt4 == '0' && charAt5 >= '0' && charAt5 <= '9') {
                throw new NumberFormatException(i.l("val [", str, "] is not a valid number."));
            }
        }
        BigInteger bigInteger = new BigInteger(str2);
        return bigInteger.bitLength() <= 31 ? Integer.valueOf(bigInteger.intValue()) : bigInteger.bitLength() <= 63 ? Long.valueOf(bigInteger.longValue()) : bigInteger;
    }

    public static Object o(String str) {
        if ("".equals(str)) {
            return str;
        }
        if ("true".equalsIgnoreCase(str)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(str)) {
            return Boolean.FALSE;
        }
        if ("null".equalsIgnoreCase(str)) {
            return f8963c;
        }
        if (str == null || str.isEmpty()) {
            return str;
        }
        int i2 = str.charAt(0) == '-' ? 1 : 0;
        if (i2 >= str.length()) {
            return str;
        }
        if (str.charAt(i2) == '.') {
            i2++;
        }
        if (i2 >= str.length() || str.charAt(i2) < '0' || str.charAt(i2) > '9') {
            return str;
        }
        try {
            return n(str);
        } catch (Exception unused) {
            return str;
        }
    }

    public static com.imsdk.a.a.a.b p(String str) {
        return new com.imsdk.a.a.a.b("JavaBean object contains recursively defined member variable of key " + k(str));
    }

    public int a(String str, int i2) {
        Number a7 = a(str, (Number) null);
        return a7 == null ? i2 : a7.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0097, code lost:
    
        if (r5.length() > 3) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0099, code lost:
    
        r5 = r5.substring(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b2, code lost:
    
        if (r5.length() == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00bc, code lost:
    
        if (java.lang.Character.isLowerCase(r5.charAt(0)) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c4, code lost:
    
        if (r5.length() != 1) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c6, code lost:
    
        r6 = r5.toLowerCase(java.util.Locale.ROOT);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d5, code lost:
    
        if (java.lang.Character.isUpperCase(r5.charAt(1)) != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d7, code lost:
    
        r6 = r5.substring(0, 1).toLowerCase(java.util.Locale.ROOT) + r5.substring(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f5, code lost:
    
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ab, code lost:
    
        if (r5.length() > 2) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(java.lang.Object r11, java.util.Set r12) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.C0732b.f(java.lang.Object, java.util.Set):void");
    }

    public C0732b i(String str) {
        return a(str, (C0732b) null);
    }

    public String j(String str) {
        return a(str, "");
    }

    public Object l(String str) {
        return this.f8964a.remove(str);
    }

    public String toString() {
        try {
            return a(0);
        } catch (Exception unused) {
            return null;
        }
    }

    public C0732b(C0736f c0736f) {
        this();
        if (c0736f.d() != '{') {
            throw c0736f.a("A JSONObject text must begin with '{'");
        }
        while (true) {
            char d7 = c0736f.d();
            if (d7 == 0) {
                throw c0736f.a("A JSONObject text must end with '}'");
            }
            if (d7 == '}') {
                return;
            }
            String obj = c0736f.b(d7).toString();
            if (c0736f.d() != ':') {
                throw c0736f.a("Expected a ':' after a key");
            }
            if (obj != null) {
                if (g(obj) != null) {
                    throw c0736f.a("Duplicate key \"" + obj + "\"");
                }
                Object e3 = c0736f.e();
                if (e3 != null) {
                    a(obj, e3);
                }
            }
            char d8 = c0736f.d();
            if (d8 != ',' && d8 != ';') {
                if (d8 != '}') {
                    throw c0736f.a("Expected a ',' or '}'");
                }
                return;
            } else {
                if (c0736f.d() == '}') {
                    return;
                }
                if (c0736f.b()) {
                    throw c0736f.a("A JSONObject text must end with '}'");
                }
                c0736f.a();
            }
        }
    }

    public C0731a a(String str, C0731a c0731a) {
        Object g7 = g(str);
        return g7 instanceof C0731a ? (C0731a) g7 : c0731a;
    }

    public int b() {
        return this.f8964a.size();
    }

    public C0731a c(String str) {
        Object a7 = a(str);
        if (a7 instanceof C0731a) {
            return (C0731a) a7;
        }
        throw b(str, "JSONArray", a7);
    }

    public C0732b d(String str) {
        Object a7 = a(str);
        if (a7 instanceof C0732b) {
            return (C0732b) a7;
        }
        throw b(str, "JSONObject", a7);
    }

    public String e(String str) {
        Object a7 = a(str);
        if (a7 instanceof String) {
            return (String) a7;
        }
        throw b(str, "string", a7);
    }

    public Object g(String str) {
        if (str == null) {
            return null;
        }
        return this.f8964a.get(str);
    }

    public C0732b(Object obj) {
        this();
        f(obj, Collections.newSetFromMap(new IdentityHashMap()));
    }

    public static Object b(Object obj) {
        return h(obj, null);
    }

    public C0732b a(String str, C0732b c0732b) {
        Object g7 = g(str);
        return g7 instanceof C0732b ? (C0732b) g7 : c0732b;
    }

    public C0731a h(String str) {
        return a(str, (C0731a) null);
    }

    public C0732b(String str) {
        this(new C0736f(str));
    }

    public C0732b a(String str, Object obj) {
        if (str == null) {
            throw new NullPointerException("Null key.");
        }
        if (obj == null) {
            l(str);
            return this;
        }
        a(obj);
        this.f8964a.put(str, obj);
        return this;
    }

    public boolean b(String str) {
        Object a7 = a(str);
        if (a7.equals(Boolean.FALSE)) {
            return false;
        }
        boolean z6 = a7 instanceof String;
        if (z6 && ((String) a7).equalsIgnoreCase("false")) {
            return false;
        }
        if (a7.equals(Boolean.TRUE)) {
            return true;
        }
        if (z6 && ((String) a7).equalsIgnoreCase("true")) {
            return true;
        }
        throw b(str, "Boolean", a7);
    }

    public boolean f(String str) {
        return this.f8964a.containsKey(str);
    }

    public C0732b(Map map) {
        if (map == null) {
            this.f8964a = new HashMap();
            return;
        }
        this.f8964a = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() == null) {
                throw new NullPointerException("Null key.");
            }
            Object value = entry.getValue();
            if (value != null) {
                a(value);
                this.f8964a.put(String.valueOf(entry.getKey()), b(value));
            }
        }
    }

    public Writer a(Writer writer, int i2, int i7) {
        try {
            int b7 = b();
            writer.write(123);
            if (b7 == 1) {
                Map.Entry entry = (Map.Entry) a().iterator().next();
                String str = (String) entry.getKey();
                writer.write(k(str));
                writer.write(58);
                if (i2 > 0) {
                    writer.write(32);
                }
                try {
                    e(writer, entry.getValue(), i2, i7);
                    writer.write(125);
                    return writer;
                } catch (Exception e3) {
                    throw new com.imsdk.a.a.a.b("Unable to write JSONObject value for key: " + str, e3);
                }
            }
            if (b7 != 0) {
                int i8 = i7 + i2;
                boolean z6 = false;
                for (Map.Entry entry2 : a()) {
                    if (z6) {
                        writer.write(44);
                    }
                    if (i2 > 0) {
                        writer.write(10);
                    }
                    d(i8, writer);
                    String str2 = (String) entry2.getKey();
                    writer.write(k(str2));
                    writer.write(58);
                    if (i2 > 0) {
                        writer.write(32);
                    }
                    try {
                        e(writer, entry2.getValue(), i2, i8);
                        z6 = true;
                    } catch (Exception e7) {
                        throw new com.imsdk.a.a.a.b("Unable to write JSONObject value for key: " + str2, e7);
                    }
                }
                if (i2 > 0) {
                    writer.write(10);
                }
                d(i7, writer);
            }
            writer.write(125);
            return writer;
        } catch (IOException e8) {
            throw new com.imsdk.a.a.a.b(e8);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x006d, code lost:
    
        if (r4 == '<') goto L37;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x002e. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.Writer a(java.lang.String r8, java.io.Writer r9) {
        /*
            if (r8 == 0) goto L81
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto La
            goto L81
        La:
            int r0 = r8.length()
            r1 = 34
            r9.write(r1)
            r2 = 0
            r3 = r2
            r4 = r3
        L16:
            if (r3 >= r0) goto L7d
            char r5 = r8.charAt(r3)
            r6 = 12
            if (r5 == r6) goto L76
            r6 = 13
            if (r5 == r6) goto L73
            r6 = 92
            if (r5 == r1) goto L6f
            r7 = 47
            if (r5 == r7) goto L6b
            if (r5 == r6) goto L6f
            switch(r5) {
                case 8: goto L68;
                case 9: goto L65;
                case 10: goto L62;
                default: goto L31;
            }
        L31:
            r4 = 32
            if (r5 < r4) goto L4a
            r4 = 128(0x80, float:1.794E-43)
            if (r5 < r4) goto L3d
            r4 = 160(0xa0, float:2.24E-43)
            if (r5 < r4) goto L4a
        L3d:
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r5 < r4) goto L46
            r4 = 8448(0x2100, float:1.1838E-41)
            if (r5 >= r4) goto L46
            goto L4a
        L46:
            r9.write(r5)
            goto L79
        L4a:
            java.lang.String r4 = "\\u"
            r9.write(r4)
            java.lang.String r4 = java.lang.Integer.toHexString(r5)
            int r6 = r4.length()
            int r6 = 4 - r6
            java.lang.String r7 = "0000"
            r9.write(r7, r2, r6)
        L5e:
            r9.write(r4)
            goto L79
        L62:
            java.lang.String r4 = "\\n"
            goto L5e
        L65:
            java.lang.String r4 = "\\t"
            goto L5e
        L68:
            java.lang.String r4 = "\\b"
            goto L5e
        L6b:
            r7 = 60
            if (r4 != r7) goto L46
        L6f:
            r9.write(r6)
            goto L46
        L73:
            java.lang.String r4 = "\\r"
            goto L5e
        L76:
            java.lang.String r4 = "\\f"
            goto L5e
        L79:
            int r3 = r3 + 1
            r4 = r5
            goto L16
        L7d:
            r9.write(r1)
            return r9
        L81:
            java.lang.String r8 = "\"\""
            r9.write(r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.C0732b.a(java.lang.String, java.io.Writer):java.io.Writer");
    }

    public Number a(String str, Number number) {
        Object g7 = g(str);
        if (!f8963c.equals(g7)) {
            if (g7 instanceof Number) {
                return (Number) g7;
            }
            try {
                return n(g7.toString());
            } catch (Exception unused) {
            }
        }
        return number;
    }

    public Object a(String str) {
        if (str == null) {
            throw new com.imsdk.a.a.a.b("Null key.");
        }
        Object g7 = g(str);
        if (g7 != null) {
            return g7;
        }
        throw new com.imsdk.a.a.a.b("JSONObject[" + k(str) + "] not found.");
    }

    public String a(int i2) {
        return a(new StringWriter(), i2, 0).toString();
    }

    public static String a(Number number) {
        if (number == null) {
            throw new com.imsdk.a.a.a.b("Null pointer");
        }
        a((Object) number);
        String obj = number.toString();
        if (obj.indexOf(46) <= 0 || obj.indexOf(101) >= 0 || obj.indexOf(69) >= 0) {
            return obj;
        }
        while (obj.endsWith("0")) {
            obj = i.d(1, 0, obj);
        }
        return obj.endsWith(".") ? i.d(1, 0, obj) : obj;
    }

    public String a(String str, String str2) {
        Object g7 = g(str);
        return f8963c.equals(g7) ? str2 : g7.toString();
    }

    public Set a() {
        return this.f8964a.entrySet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r0.isNaN() == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.Object r2) {
        /*
            boolean r0 = r2 instanceof java.lang.Number
            if (r0 == 0) goto L34
            java.lang.Number r2 = (java.lang.Number) r2
            boolean r0 = r2 instanceof java.lang.Double
            if (r0 == 0) goto L19
            r0 = r2
            java.lang.Double r0 = (java.lang.Double) r0
            boolean r1 = r0.isInfinite()
            if (r1 != 0) goto L2c
            boolean r0 = r0.isNaN()
            if (r0 != 0) goto L2c
        L19:
            boolean r0 = r2 instanceof java.lang.Float
            if (r0 == 0) goto L34
            java.lang.Float r2 = (java.lang.Float) r2
            boolean r0 = r2.isInfinite()
            if (r0 != 0) goto L2c
            boolean r2 = r2.isNaN()
            if (r2 != 0) goto L2c
            goto L34
        L2c:
            com.imsdk.a.a.a.b r2 = new com.imsdk.a.a.a.b
            java.lang.String r0 = "JSON does not allow non-finite numbers."
            r2.<init>(r0)
            throw r2
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.C0732b.a(java.lang.Object):void");
    }
}
