package c4;

import A.i;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: c4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0731a implements Iterable {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8961b;

    public C0731a() {
        this.f8961b = new ArrayList();
    }

    public int a() {
        return this.f8961b.size();
    }

    public final void b(Collection collection) {
        ArrayList arrayList = this.f8961b;
        arrayList.ensureCapacity(collection.size() + arrayList.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            a(C0732b.b(it.next()));
        }
    }

    public Object c(int i2) {
        if (i2 < 0 || i2 >= a()) {
            return null;
        }
        return this.f8961b.get(i2);
    }

    public String d(int i2) {
        return a(i2, "");
    }

    public String e(int i2) {
        return a(new StringWriter(), i2, 0).toString();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f8961b.iterator();
    }

    public String toString() {
        try {
            return e(0);
        } catch (Exception unused) {
            return null;
        }
    }

    public C0731a(C0736f c0736f) {
        this();
        ArrayList arrayList;
        Object e3;
        char d7;
        if (c0736f.d() != '[') {
            throw c0736f.a("A JSONArray text must start with '['");
        }
        char d8 = c0736f.d();
        if (d8 == 0) {
            throw c0736f.a("Expected a ',' or ']'");
        }
        if (d8 != ']') {
            do {
                c0736f.a();
                char d9 = c0736f.d();
                c0736f.a();
                if (d9 == ',') {
                    arrayList = this.f8961b;
                    e3 = C0732b.f8963c;
                } else {
                    arrayList = this.f8961b;
                    e3 = c0736f.e();
                }
                arrayList.add(e3);
                char d10 = c0736f.d();
                if (d10 == 0) {
                    throw c0736f.a("Expected a ',' or ']'");
                }
                if (d10 != ',') {
                    if (d10 != ']') {
                        throw c0736f.a("Expected a ',' or ']'");
                    }
                    return;
                } else {
                    d7 = c0736f.d();
                    if (d7 == 0) {
                        throw c0736f.a("Expected a ',' or ']'");
                    }
                }
            } while (d7 != ']');
        }
    }

    public C0731a a(Object obj) {
        C0732b.a(obj);
        this.f8961b.add(obj);
        return this;
    }

    public C0732b b(int i2) {
        Object a7 = a(i2);
        if (a7 instanceof C0732b) {
            return (C0732b) a7;
        }
        if (a7 == null) {
            throw new com.imsdk.a.a.a.b(i.g(i2, "JSONArray[", "] is not a JSONObject (null)."), null);
        }
        if ((a7 instanceof Map) || (a7 instanceof Iterable) || (a7 instanceof C0732b)) {
            StringBuilder q6 = i.q(i2, "JSONArray[", "] is not a JSONObject (");
            q6.append(a7.getClass());
            q6.append(").");
            throw new com.imsdk.a.a.a.b(q6.toString(), null);
        }
        StringBuilder q7 = i.q(i2, "JSONArray[", "] is not a JSONObject (");
        q7.append(a7.getClass());
        q7.append(" : ");
        q7.append(a7);
        q7.append(").");
        throw new com.imsdk.a.a.a.b(q7.toString(), null);
    }

    public C0731a(Object obj) {
        this();
        if (obj.getClass().isArray()) {
            boolean isArray = obj.getClass().isArray();
            ArrayList arrayList = this.f8961b;
            if (isArray) {
                int length = Array.getLength(obj);
                arrayList.ensureCapacity(arrayList.size() + length);
                for (int i2 = 0; i2 < length; i2++) {
                    a(C0732b.b(Array.get(obj, i2)));
                }
                return;
            }
            if (obj instanceof C0731a) {
                arrayList.addAll(((C0731a) obj).f8961b);
                return;
            }
            if (obj instanceof Collection) {
                b((Collection) obj);
                return;
            } else {
                if (obj instanceof Iterable) {
                    Iterator it = ((Iterable) obj).iterator();
                    while (it.hasNext()) {
                        a(C0732b.b(it.next()));
                    }
                    return;
                }
                throw new com.imsdk.a.a.a.b("JSONArray initial value should be a string or collection or array.");
            }
        }
        throw new com.imsdk.a.a.a.b("JSONArray initial value should be a string or collection or array.");
    }

    public Writer a(Writer writer, int i2, int i7) {
        try {
            int a7 = a();
            writer.write(91);
            ArrayList arrayList = this.f8961b;
            int i8 = 0;
            if (a7 == 1) {
                try {
                    C0732b.e(writer, arrayList.get(0), i2, i7);
                    writer.write(93);
                    return writer;
                } catch (Exception e3) {
                    throw new com.imsdk.a.a.a.b("Unable to write JSONArray value at index: 0", e3);
                }
            }
            if (a7 != 0) {
                int i9 = i7 + i2;
                boolean z6 = false;
                while (i8 < a7) {
                    if (z6) {
                        writer.write(44);
                    }
                    if (i2 > 0) {
                        writer.write(10);
                    }
                    C0732b.d(i9, writer);
                    try {
                        C0732b.e(writer, arrayList.get(i8), i2, i9);
                        i8++;
                        z6 = true;
                    } catch (Exception e7) {
                        throw new com.imsdk.a.a.a.b("Unable to write JSONArray value at index: " + i8, e7);
                    }
                }
                if (i2 > 0) {
                    writer.write(10);
                }
                C0732b.d(i7, writer);
            }
            writer.write(93);
            return writer;
        } catch (IOException e8) {
            throw new com.imsdk.a.a.a.b(e8);
        }
    }

    public Object a(int i2) {
        Object c7 = c(i2);
        if (c7 != null) {
            return c7;
        }
        throw new com.imsdk.a.a.a.b(i.g(i2, "JSONArray[", "] not found."));
    }

    public C0731a(Collection collection) {
        if (collection == null) {
            this.f8961b = new ArrayList();
        } else {
            this.f8961b = new ArrayList(collection.size());
            b(collection);
        }
    }

    public String a(int i2, String str) {
        Object c7 = c(i2);
        return C0732b.f8963c.equals(c7) ? str : c7.toString();
    }
}
