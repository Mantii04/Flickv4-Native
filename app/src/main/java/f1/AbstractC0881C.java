package f1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

/* renamed from: f1.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0881C extends F {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14117a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public Executor f14118b;

    /* renamed from: c, reason: collision with root package name */
    public C0887c f14119c;

    /* renamed from: d, reason: collision with root package name */
    public C0915v f14120d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14121e;

    public String getGroupableSelectionTitle() {
        return null;
    }

    public String getTransferableSectionTitle() {
        return null;
    }

    public final void notifyDynamicRoutesChanged(C0915v c0915v, Collection<C0880B> collection) {
        if (c0915v == null) {
            throw new NullPointerException("groupRoute must not be null");
        }
        if (collection == null) {
            throw new NullPointerException("dynamicRoutes must not be null");
        }
        synchronized (this.f14117a) {
            try {
                Executor executor = this.f14118b;
                if (executor != null) {
                    executor.execute(new RunnableC0919z(this, this.f14119c, c0915v, collection));
                } else {
                    this.f14120d = c0915v;
                    this.f14121e = new ArrayList(collection);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void onAddMemberRoute(String str);

    public abstract void onRemoveMemberRoute(String str);

    public abstract void onUpdateMemberRoutes(List<String> list);
}
