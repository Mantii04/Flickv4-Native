package n1;

import android.content.Context;
import androidx.room.RoomDatabase;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.ClassUtils;

/* renamed from: n1.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1359C {
    public static final <T extends RoomDatabase> C1360D databaseBuilder(Context context, Class<T> klass, String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(klass, "klass");
        if (str == null || StringsKt__StringsKt.isBlank(str)) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new C1360D(context, klass, str);
    }

    public static final <T, C> T getGeneratedImplementation(Class<C> klass, String suffix) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(klass, "klass");
        kotlin.jvm.internal.j.checkNotNullParameter(suffix, "suffix");
        Package r12 = klass.getPackage();
        kotlin.jvm.internal.j.checkNotNull(r12);
        String fullPackage = r12.getName();
        String canonicalName = klass.getCanonicalName();
        kotlin.jvm.internal.j.checkNotNull(canonicalName);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(fullPackage, "fullPackage");
        if (fullPackage.length() != 0) {
            canonicalName = canonicalName.substring(fullPackage.length() + 1);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(canonicalName, "this as java.lang.String).substring(startIndex)");
        }
        String o6 = A.i.o(new StringBuilder(), P5.p.replace$default(canonicalName, ClassUtils.PACKAGE_SEPARATOR_CHAR, '_', false, 4, (Object) null), suffix);
        try {
            if (fullPackage.length() == 0) {
                str = o6;
            } else {
                str = fullPackage + ClassUtils.PACKAGE_SEPARATOR_CHAR + o6;
            }
            Class<?> cls = Class.forName(str, true, klass.getClassLoader());
            kotlin.jvm.internal.j.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
            return (T) cls.newInstance();
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("Cannot find implementation for " + klass.getCanonicalName() + ". " + o6 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor " + klass + ".canonicalName");
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + klass + ".canonicalName");
        }
    }

    public static final <T extends RoomDatabase> C1360D inMemoryDatabaseBuilder(Context context, Class<T> klass) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(klass, "klass");
        return new C1360D(context, klass, null);
    }
}
