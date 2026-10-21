package s1;

import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import kotlin.jvm.internal.j;
import r1.k;
import r1.l;
import r1.m;

/* loaded from: classes.dex */
public final class g implements l {
    @Override // r1.l
    public m create(k configuration) {
        j.checkNotNullParameter(configuration, "configuration");
        return new FrameworkSQLiteOpenHelper(configuration.f19721a, configuration.f19722b, configuration.f19723c, configuration.f19724d, configuration.f19725e);
    }
}
