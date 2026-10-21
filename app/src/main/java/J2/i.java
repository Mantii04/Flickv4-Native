package J2;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f1507a;

    /* renamed from: b, reason: collision with root package name */
    public final d f1508b;

    /* renamed from: c, reason: collision with root package name */
    public final c f1509c;

    public i() {
        this(new j(), new b());
    }

    public final void a(Context context, String str, String str2) {
        d dVar = this.f1508b;
        HashSet hashSet = this.f1507a;
        if (hashSet.contains(str)) {
            log("%s already loaded previously!", str);
            return;
        }
        try {
            ((j) dVar).loadLibrary(str);
            hashSet.add(str);
            log("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e3) {
            log("Loading the library normally failed: %s", Log.getStackTraceString(e3));
            log("%s (%s) was not loaded normally, re-linking...", str, str2);
            File workaroundLibFile = getWorkaroundLibFile(context, str, str2);
            if (!workaroundLibFile.exists()) {
                cleanupOldLibFiles(context, str, str2);
                j jVar = (j) dVar;
                ((b) this.f1509c).installLibrary(context, jVar.supportedAbis(), jVar.mapLibraryName(str), workaroundLibFile, this);
            }
            ((j) dVar).loadPath(workaroundLibFile.getAbsolutePath());
            hashSet.add(str);
            log("%s (%s) was re-linked!", str, str2);
        }
    }

    public void cleanupOldLibFiles(Context context, String str, String str2) {
        File workaroundLibDir = getWorkaroundLibDir(context);
        File workaroundLibFile = getWorkaroundLibFile(context, str, str2);
        File[] listFiles = workaroundLibDir.listFiles(new h(((j) this.f1508b).mapLibraryName(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (!file.getAbsolutePath().equals(workaroundLibFile.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    public File getWorkaroundLibDir(Context context) {
        return context.getDir("lib", 0);
    }

    public File getWorkaroundLibFile(Context context, String str, String str2) {
        String mapLibraryName = ((j) this.f1508b).mapLibraryName(str);
        return k.isEmpty(str2) ? new File(getWorkaroundLibDir(context), mapLibraryName) : new File(getWorkaroundLibDir(context), A.i.C(mapLibraryName, ".", str2));
    }

    public void loadLibrary(Context context, String str, String str2, e eVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (k.isEmpty(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        log("Beginning load of %s...", str);
        if (eVar == null) {
            a(context, str, str2);
        } else {
            new Thread(new g(this, context, str, str2)).start();
        }
    }

    public void log(String str, Object... objArr) {
        log(String.format(Locale.US, str, objArr));
    }

    public void log(String str) {
    }

    public i(d dVar, c cVar) {
        this.f1507a = new HashSet();
        if (dVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (cVar != null) {
            this.f1508b = dVar;
            this.f1509c = cVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library installer");
    }
}
