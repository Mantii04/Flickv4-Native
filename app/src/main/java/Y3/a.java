package Y3;

import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4388a;

    public /* synthetic */ a(int i2) {
        this.f4388a = i2;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean lambda$static$1;
        boolean isNormalPriorityEventFile;
        switch (this.f4388a) {
            case 0:
                lambda$static$1 = CrashlyticsReportPersistence.lambda$static$1(file, str);
                return lambda$static$1;
            default:
                isNormalPriorityEventFile = CrashlyticsReportPersistence.isNormalPriorityEventFile(file, str);
                return isNormalPriorityEventFile;
        }
    }
}
