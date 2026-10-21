package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.List;

/* loaded from: classes.dex */
public final class T extends f0 implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final Application f7004a;

    /* renamed from: b, reason: collision with root package name */
    public final a0 f7005b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f7006c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0557o f7007d;

    /* renamed from: e, reason: collision with root package name */
    public final q1.g f7008e;

    @SuppressLint({"LambdaLast"})
    public T(Application application, q1.j owner, Bundle bundle) {
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        this.f7008e = owner.getSavedStateRegistry();
        this.f7007d = owner.getLifecycle();
        this.f7006c = bundle;
        this.f7004a = application;
        this.f7005b = application != null ? a0.f7022e.getInstance(application) : new a0();
    }

    @Override // androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass, m0.c extras) {
        List list;
        Constructor findMatchingConstructor;
        List list2;
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        kotlin.jvm.internal.j.checkNotNullParameter(extras, "extras");
        String str = (String) extras.get(e0.f7035c);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (extras.get(SavedStateHandleSupport.f6994a) == null || extras.get(SavedStateHandleSupport.f6995b) == null) {
            if (this.f7007d != null) {
                return (T) create(str, modelClass);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) extras.get(a0.f7024g);
        boolean isAssignableFrom = AbstractC0543a.class.isAssignableFrom(modelClass);
        if (!isAssignableFrom || application == null) {
            list = U.f7010b;
            findMatchingConstructor = U.findMatchingConstructor(modelClass, list);
        } else {
            list2 = U.f7009a;
            findMatchingConstructor = U.findMatchingConstructor(modelClass, list2);
        }
        return findMatchingConstructor == null ? (T) this.f7005b.create(modelClass, extras) : (!isAssignableFrom || application == null) ? (T) U.newInstance(modelClass, findMatchingConstructor, SavedStateHandleSupport.createSavedStateHandle(extras)) : (T) U.newInstance(modelClass, findMatchingConstructor, application, SavedStateHandleSupport.createSavedStateHandle(extras));
    }

    @Override // androidx.lifecycle.f0
    public void onRequery(X viewModel) {
        kotlin.jvm.internal.j.checkNotNullParameter(viewModel, "viewModel");
        AbstractC0557o abstractC0557o = this.f7007d;
        if (abstractC0557o != null) {
            q1.g gVar = this.f7008e;
            kotlin.jvm.internal.j.checkNotNull(gVar);
            kotlin.jvm.internal.j.checkNotNull(abstractC0557o);
            AbstractC0554l.attachHandleIfNeeded(viewModel, gVar, abstractC0557o);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends X> T create(String key, Class<T> modelClass) {
        List list;
        Constructor findMatchingConstructor;
        T t6;
        Object obj;
        Application application;
        List list2;
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        AbstractC0557o abstractC0557o = this.f7007d;
        if (abstractC0557o != null) {
            boolean isAssignableFrom = AbstractC0543a.class.isAssignableFrom(modelClass);
            if (!isAssignableFrom || this.f7004a == null) {
                list = U.f7010b;
                findMatchingConstructor = U.findMatchingConstructor(modelClass, list);
            } else {
                list2 = U.f7009a;
                findMatchingConstructor = U.findMatchingConstructor(modelClass, list2);
            }
            if (findMatchingConstructor == null) {
                return this.f7004a != null ? (T) this.f7005b.create(modelClass) : (T) e0.f7033a.getInstance().create(modelClass);
            }
            q1.g gVar = this.f7008e;
            kotlin.jvm.internal.j.checkNotNull(gVar);
            SavedStateHandleController create = AbstractC0554l.create(gVar, abstractC0557o, key, this.f7006c);
            if (!isAssignableFrom || (application = this.f7004a) == null) {
                t6 = (T) U.newInstance(modelClass, findMatchingConstructor, create.getHandle());
            } else {
                kotlin.jvm.internal.j.checkNotNull(application);
                t6 = (T) U.newInstance(modelClass, findMatchingConstructor, application, create.getHandle());
            }
            synchronized (t6.f7017a) {
                try {
                    obj = t6.f7017a.get("androidx.lifecycle.savedstate.vm.tag");
                    if (obj == 0) {
                        t6.f7017a.put("androidx.lifecycle.savedstate.vm.tag", create);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (obj != 0) {
                create = obj;
            }
            if (t6.f7019c) {
                X.a(create);
            }
            return t6;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
