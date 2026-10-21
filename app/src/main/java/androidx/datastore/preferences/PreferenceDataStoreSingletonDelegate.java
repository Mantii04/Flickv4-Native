package androidx.datastore.preferences;

import H5.l;
import J5.a;
import R5.I;
import Y.d;
import Z.b;
import a0.AbstractC0374a;
import android.content.Context;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate implements a {

    /* renamed from: a, reason: collision with root package name */
    public final String f5710a;

    /* renamed from: b, reason: collision with root package name */
    public final b f5711b;

    /* renamed from: c, reason: collision with root package name */
    public final l f5712c;

    /* renamed from: d, reason: collision with root package name */
    public final I f5713d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f5714e;

    /* renamed from: f, reason: collision with root package name */
    public volatile d f5715f;

    public PreferenceDataStoreSingletonDelegate(String name, b bVar, l produceMigrations, I scope) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(produceMigrations, "produceMigrations");
        j.checkNotNullParameter(scope, "scope");
        this.f5710a = name;
        this.f5711b = bVar;
        this.f5712c = produceMigrations;
        this.f5713d = scope;
        this.f5714e = new Object();
    }

    public d getValue(Context thisRef, N5.l property) {
        d dVar;
        j.checkNotNullParameter(thisRef, "thisRef");
        j.checkNotNullParameter(property, "property");
        d dVar2 = this.f5715f;
        if (dVar2 != null) {
            return dVar2;
        }
        synchronized (this.f5714e) {
            try {
                if (this.f5715f == null) {
                    final Context applicationContext = thisRef.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.f5734a;
                    b bVar = this.f5711b;
                    l lVar = this.f5712c;
                    j.checkNotNullExpressionValue(applicationContext, "applicationContext");
                    this.f5715f = preferenceDataStoreFactory.create(bVar, (List) lVar.invoke(applicationContext), this.f5713d, new H5.a() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // H5.a
                        public final File invoke() {
                            String str;
                            Context applicationContext2 = applicationContext;
                            j.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                            str = this.f5710a;
                            return AbstractC0374a.preferencesDataStoreFile(applicationContext2, str);
                        }
                    });
                }
                dVar = this.f5715f;
                j.checkNotNull(dVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }
}
