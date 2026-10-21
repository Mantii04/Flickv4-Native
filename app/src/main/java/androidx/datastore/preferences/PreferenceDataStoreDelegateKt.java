package androidx.datastore.preferences;

import H5.l;
import J5.a;
import R5.I;
import R5.J;
import R5.M0;
import R5.U;
import Z.b;
import android.content.Context;
import java.util.List;
import kotlin.jvm.internal.j;
import v5.p;

/* loaded from: classes.dex */
public abstract class PreferenceDataStoreDelegateKt {
    public static final a preferencesDataStore(String name, b bVar, l produceMigrations, I scope) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(produceMigrations, "produceMigrations");
        j.checkNotNullParameter(scope, "scope");
        return new PreferenceDataStoreSingletonDelegate(name, bVar, produceMigrations, scope);
    }

    public static /* synthetic */ a preferencesDataStore$default(String str, b bVar, l lVar, I i2, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            bVar = null;
        }
        if ((i7 & 4) != 0) {
            lVar = new l() { // from class: androidx.datastore.preferences.PreferenceDataStoreDelegateKt$preferencesDataStore$1
                @Override // H5.l
                public final List<Object> invoke(Context it) {
                    j.checkNotNullParameter(it, "it");
                    return p.emptyList();
                }
            };
        }
        if ((i7 & 8) != 0) {
            i2 = J.CoroutineScope(U.getIO().plus(M0.SupervisorJob$default(null, 1, null)));
        }
        return preferencesDataStore(str, bVar, lVar, i2);
    }
}
