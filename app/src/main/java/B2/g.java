package B2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import l2.r;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f210a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f211b = new HashMap();

    public final synchronized List a(String str) {
        List list;
        try {
            if (!this.f210a.contains(str)) {
                this.f210a.add(str);
            }
            list = (List) this.f211b.get(str);
            if (list == null) {
                list = new ArrayList();
                this.f211b.put(str, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }

    public synchronized <T, R> void append(String str, r rVar, Class<T> cls, Class<R> cls2) {
        a(str).add(new f(cls, cls2, rVar));
    }

    public synchronized <T, R> List<r> getDecoders(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f210a.iterator();
        while (it.hasNext()) {
            List<f> list = (List) this.f211b.get((String) it.next());
            if (list != null) {
                for (f fVar : list) {
                    if (fVar.handles(cls, cls2)) {
                        arrayList.add(fVar.f209c);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> List<Class<R>> getResourceClasses(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f210a.iterator();
        while (it.hasNext()) {
            List<f> list = (List) this.f211b.get((String) it.next());
            if (list != null) {
                for (f fVar : list) {
                    if (fVar.handles(cls, cls2) && !arrayList.contains(fVar.f208b)) {
                        arrayList.add(fVar.f208b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void setBucketPriorityList(List<String> list) {
        try {
            ArrayList arrayList = new ArrayList(this.f210a);
            this.f210a.clear();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.f210a.add(it.next());
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (!list.contains(str)) {
                    this.f210a.add(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
