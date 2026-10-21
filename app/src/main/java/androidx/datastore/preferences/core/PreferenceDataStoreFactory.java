package androidx.datastore.preferences.core;

import H5.a;
import R5.I;
import Y.d;
import Y.e;
import Z.b;
import b0.g;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class PreferenceDataStoreFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final PreferenceDataStoreFactory f5734a = new PreferenceDataStoreFactory();

    public final d create(b bVar, List<Object> migrations, I scope, final a produceFile) {
        j.checkNotNullParameter(migrations, "migrations");
        j.checkNotNullParameter(scope, "scope");
        j.checkNotNullParameter(produceFile, "produceFile");
        return new PreferenceDataStore(e.f4254a.create(g.f8336a, bVar, migrations, scope, new a() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            {
                super(0);
            }

            @Override // H5.a
            public final File invoke() {
                File file = (File) a.this.invoke();
                String extension = F5.b.getExtension(file);
                g gVar = g.f8336a;
                if (j.areEqual(extension, gVar.getFileExtension())) {
                    return file;
                }
                throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: " + gVar.getFileExtension()).toString());
            }
        }));
    }
}
