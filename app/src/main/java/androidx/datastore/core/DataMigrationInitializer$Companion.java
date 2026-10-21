package androidx.datastore.core;

import H5.p;
import java.util.List;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion {
    public DataMigrationInitializer$Companion(g gVar) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008c -> B:13:0x006f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008f -> B:13:0x006f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runMigrations(androidx.datastore.core.DataMigrationInitializer$Companion r5, java.util.List r6, Y.g r7, y5.InterfaceC1944c r8) {
        /*
            r5.getClass()
            boolean r0 = r8 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            if (r0 == 0) goto L16
            r0 = r8
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
            int r1 = r0.f5603m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f5603m = r1
            goto L1b
        L16:
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            r0.<init>(r5, r8)
        L1b:
            java.lang.Object r5 = r0.f5601f
            java.lang.Object r8 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r0.f5603m
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L47
            if (r1 == r3) goto L3f
            if (r1 != r2) goto L37
            java.util.Iterator r6 = r0.f5600e
            java.io.Serializable r7 = r0.f5599b
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref$ObjectRef) r7
            kotlin.b.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L35
            goto L6f
        L35:
            r5 = move-exception
            goto L88
        L37:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3f:
            java.io.Serializable r6 = r0.f5599b
            java.util.List r6 = (java.util.List) r6
            kotlin.b.throwOnFailure(r5)
            goto L63
        L47:
            kotlin.b.throwOnFailure(r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r1 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
            r4 = 0
            r1.<init>(r6, r5, r4)
            r0.f5599b = r5
            r0.f5603m = r3
            androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1 r7 = (androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1) r7
            java.lang.Object r6 = r7.updateData(r1, r0)
            if (r6 != r8) goto L62
            goto La2
        L62:
            r6 = r5
        L63:
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
            r7 = r5
        L6f:
            boolean r5 = r6.hasNext()
            if (r5 == 0) goto L9a
            java.lang.Object r5 = r6.next()
            H5.l r5 = (H5.l) r5
            r0.f5599b = r7     // Catch: java.lang.Throwable -> L35
            r0.f5600e = r6     // Catch: java.lang.Throwable -> L35
            r0.f5603m = r2     // Catch: java.lang.Throwable -> L35
            java.lang.Object r5 = r5.invoke(r0)     // Catch: java.lang.Throwable -> L35
            if (r5 != r8) goto L6f
            goto La2
        L88:
            java.lang.Object r1 = r7.f17447b
            if (r1 != 0) goto L8f
            r7.f17447b = r5
            goto L6f
        L8f:
            kotlin.jvm.internal.j.checkNotNull(r1)
            java.lang.Object r1 = r7.f17447b
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            u5.AbstractC1702a.addSuppressed(r1, r5)
            goto L6f
        L9a:
            java.lang.Object r5 = r7.f17447b
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            if (r5 != 0) goto La3
            u5.j r8 = u5.C1711j.f20329a
        La2:
            return r8
        La3:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer$Companion.access$runMigrations(androidx.datastore.core.DataMigrationInitializer$Companion, java.util.List, Y.g, y5.c):java.lang.Object");
    }

    public final <T> p getInitializer(List<Object> migrations) {
        j.checkNotNullParameter(migrations, "migrations");
        return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
    }
}
