package androidx.datastore.core;

import H5.a;
import H5.l;
import H5.p;
import R5.AbstractC0304x;
import R5.C0303w;
import R5.I;
import R5.InterfaceC0302v;
import U5.b;
import U5.k;
import U5.m;
import Y.d;
import Y.f;
import Y.h;
import Y.i;
import Y.j;
import Y.q;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.flow.StateFlowImpl;
import u5.C1711j;
import u5.InterfaceC1707f;
import v5.u;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes.dex */
public final class SingleProcessDataStore implements d {

    /* renamed from: j, reason: collision with root package name */
    public static final j f5621j = new j(null);

    /* renamed from: k, reason: collision with root package name */
    public static final LinkedHashSet f5622k = new LinkedHashSet();

    /* renamed from: l, reason: collision with root package name */
    public static final Object f5623l = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final a f5624a;

    /* renamed from: b, reason: collision with root package name */
    public final i f5625b;

    /* renamed from: c, reason: collision with root package name */
    public final Y.a f5626c;

    /* renamed from: d, reason: collision with root package name */
    public final b f5627d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5628e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1707f f5629f;

    /* renamed from: g, reason: collision with root package name */
    public final k f5630g;

    /* renamed from: h, reason: collision with root package name */
    public List f5631h;

    /* renamed from: i, reason: collision with root package name */
    public final SimpleActor f5632i;

    public SingleProcessDataStore(a produceFile, i serializer, List<? extends p> initTasksList, Y.a corruptionHandler, I scope) {
        kotlin.jvm.internal.j.checkNotNullParameter(produceFile, "produceFile");
        kotlin.jvm.internal.j.checkNotNullParameter(serializer, "serializer");
        kotlin.jvm.internal.j.checkNotNullParameter(initTasksList, "initTasksList");
        kotlin.jvm.internal.j.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        kotlin.jvm.internal.j.checkNotNullParameter(scope, "scope");
        this.f5624a = produceFile;
        this.f5625b = serializer;
        this.f5626c = corruptionHandler;
        this.f5627d = U5.d.flow(new SingleProcessDataStore$data$1(this, null));
        this.f5628e = ".tmp";
        this.f5629f = kotlin.a.lazy(new a() { // from class: androidx.datastore.core.SingleProcessDataStore$file$2
            {
                super(0);
            }

            @Override // H5.a
            public final File invoke() {
                a aVar;
                aVar = SingleProcessDataStore.this.f5624a;
                File file = (File) aVar.invoke();
                String it = file.getAbsolutePath();
                j jVar = SingleProcessDataStore.f5621j;
                synchronized (jVar.getActiveFilesLock$datastore_core()) {
                    if (jVar.getActiveFiles$datastore_core().contains(it)) {
                        throw new IllegalStateException(("There are multiple DataStores active for the same file: " + file + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                    }
                    Set<String> activeFiles$datastore_core = jVar.getActiveFiles$datastore_core();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(it, "it");
                    activeFiles$datastore_core.add(it);
                }
                return file;
            }
        });
        this.f5630g = m.MutableStateFlow(q.f4264a);
        this.f5631h = u.toList(initTasksList);
        this.f5632i = new SimpleActor(scope, new l() { // from class: androidx.datastore.core.SingleProcessDataStore$actor$1
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                File a7;
                k kVar;
                if (th != null) {
                    kVar = SingleProcessDataStore.this.f5630g;
                    ((StateFlowImpl) kVar).setValue(new f(th));
                }
                j jVar = SingleProcessDataStore.f5621j;
                Object activeFilesLock$datastore_core = jVar.getActiveFilesLock$datastore_core();
                SingleProcessDataStore singleProcessDataStore = SingleProcessDataStore.this;
                synchronized (activeFilesLock$datastore_core) {
                    Set<String> activeFiles$datastore_core = jVar.getActiveFiles$datastore_core();
                    a7 = singleProcessDataStore.a();
                    activeFiles$datastore_core.remove(a7.getAbsolutePath());
                }
            }
        }, new p() { // from class: androidx.datastore.core.SingleProcessDataStore$actor$2
            @Override // H5.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Y.m) obj, (Throwable) obj2);
                return C1711j.f20329a;
            }

            public final void invoke(Y.m msg, Throwable th) {
                kotlin.jvm.internal.j.checkNotNullParameter(msg, "msg");
                if (msg instanceof Y.l) {
                    InterfaceC0302v ack = ((Y.l) msg).getAck();
                    if (th == null) {
                        th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                    }
                    ((C0303w) ack).completeExceptionally(th);
                }
            }
        }, new SingleProcessDataStore$actor$3(this, null));
    }

    public static final Object access$handleRead(SingleProcessDataStore singleProcessDataStore, Y.k kVar, InterfaceC1944c interfaceC1944c) {
        Object d7;
        Y.p pVar = (Y.p) ((StateFlowImpl) singleProcessDataStore.f5630g).getValue();
        boolean z6 = pVar instanceof Y.b;
        C1711j c1711j = C1711j.f20329a;
        if (!z6) {
            if (pVar instanceof h) {
                if (pVar == kVar.getLastState() && (d7 = singleProcessDataStore.d(interfaceC1944c)) == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    return d7;
                }
            } else if (kotlin.jvm.internal.j.areEqual(pVar, q.f4264a)) {
                Object d8 = singleProcessDataStore.d(interfaceC1944c);
                if (d8 == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    return d8;
                }
            } else if (pVar instanceof f) {
                throw new IllegalStateException("Can't read in final state.");
            }
        }
        return c1711j;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|1|(2:3|(5:5|6|7|(5:(1:(1:(1:12)(2:19|20))(3:21|22|23))(1:28)|13|14|15|16)(8:29|30|31|32|33|34|(6:36|(1:38)|26|14|15|16)(3:39|(1:41)(1:56)|(2:43|(2:45|(1:47))(2:48|49))(2:50|(2:52|53)(2:54|55)))|27)|24))|64|6|7|(0)(0)|24|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
    
        if (r8 != r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0037, code lost:
    
        r9 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.SingleProcessDataStore, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$handleUpdate(androidx.datastore.core.SingleProcessDataStore r8, Y.l r9, y5.InterfaceC1944c r10) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.access$handleUpdate(androidx.datastore.core.SingleProcessDataStore, Y.l, y5.c):java.lang.Object");
    }

    public final File a() {
        return (File) this.f5629f.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(y5.InterfaceC1944c r14) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.b(y5.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(y5.InterfaceC1944c r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.f5678j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5678j = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f5676e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5678j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f5675b
            kotlin.b.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L43
        L2b:
            r5 = move-exception
            goto L48
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.b.throwOnFailure(r5)
            r0.f5675b = r4     // Catch: java.lang.Throwable -> L46
            r0.f5678j = r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r5 = r4.b(r0)     // Catch: java.lang.Throwable -> L46
            if (r5 != r1) goto L43
            return r1
        L43:
            u5.j r5 = u5.C1711j.f20329a
            return r5
        L46:
            r5 = move-exception
            r0 = r4
        L48:
            U5.k r0 = r0.f5630g
            Y.h r1 = new Y.h
            r1.<init>(r5)
            kotlinx.coroutines.flow.StateFlowImpl r0 = (kotlinx.coroutines.flow.StateFlowImpl) r0
            r0.setValue(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.c(y5.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(y5.InterfaceC1944c r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1) r0
            int r1 = r0.f5682j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5682j = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f5680e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5682j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f5679b
            kotlin.b.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L51
        L2b:
            r5 = move-exception
            goto L45
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.b.throwOnFailure(r5)
            r0.f5679b = r4     // Catch: java.lang.Throwable -> L43
            r0.f5682j = r3     // Catch: java.lang.Throwable -> L43
            java.lang.Object r5 = r4.b(r0)     // Catch: java.lang.Throwable -> L43
            if (r5 != r1) goto L51
            return r1
        L43:
            r5 = move-exception
            r0 = r4
        L45:
            U5.k r0 = r0.f5630g
            Y.h r1 = new Y.h
            r1.<init>(r5)
            kotlinx.coroutines.flow.StateFlowImpl r0 = (kotlinx.coroutines.flow.StateFlowImpl) r0
            r0.setValue(r1)
        L51:
            u5.j r5 = u5.C1711j.f20329a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.d(y5.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.SingleProcessDataStore$readData$1, y5.c] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v3, types: [b0.g] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(y5.InterfaceC1944c r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readData$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readData$1) r0
            int r1 = r0.f5687m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5687m = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readData$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f5685f
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5687m
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.io.FileInputStream r1 = r0.f5684e
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f5683b
            kotlin.b.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2d
            goto L57
        L2d:
            r5 = move-exception
            goto L64
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.b.throwOnFailure(r5)
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L6a
            java.io.File r2 = r4.a()     // Catch: java.io.FileNotFoundException -> L6a
            r5.<init>(r2)     // Catch: java.io.FileNotFoundException -> L6a
            Y.i r2 = r4.f5625b     // Catch: java.lang.Throwable -> L62
            r0.f5683b = r4     // Catch: java.lang.Throwable -> L62
            r0.f5684e = r5     // Catch: java.lang.Throwable -> L62
            r0.f5687m = r3     // Catch: java.lang.Throwable -> L62
            b0.g r2 = (b0.g) r2     // Catch: java.lang.Throwable -> L62
            java.lang.Object r0 = r2.readFrom(r5, r0)     // Catch: java.lang.Throwable -> L62
            if (r0 != r1) goto L54
            return r1
        L54:
            r1 = r5
            r5 = r0
            r0 = r4
        L57:
            r2 = 0
            F5.a.closeFinally(r1, r2)     // Catch: java.io.FileNotFoundException -> L5c
            return r5
        L5c:
            r5 = move-exception
            goto L6c
        L5e:
            r1 = r5
            r5 = r0
            r0 = r4
            goto L64
        L62:
            r0 = move-exception
            goto L5e
        L64:
            throw r5     // Catch: java.lang.Throwable -> L65
        L65:
            r2 = move-exception
            F5.a.closeFinally(r1, r5)     // Catch: java.io.FileNotFoundException -> L5c
            throw r2     // Catch: java.io.FileNotFoundException -> L5c
        L6a:
            r5 = move-exception
            r0 = r4
        L6c:
            java.io.File r1 = r0.a()
            boolean r1 = r1.exists()
            if (r1 != 0) goto L7f
            Y.i r5 = r0.f5625b
            b0.g r5 = (b0.g) r5
            java.lang.Object r5 = r5.m65getDefaultValue()
            return r5
        L7f:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.e(y5.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(y5.InterfaceC1944c r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1) r0
            int r1 = r0.f5692m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5692m = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f5690f
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5692m
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L55
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.f5689e
            java.lang.Object r0 = r0.f5688b
            androidx.datastore.core.CorruptionException r0 = (androidx.datastore.core.CorruptionException) r0
            kotlin.b.throwOnFailure(r8)     // Catch: java.io.IOException -> L35
            return r1
        L35:
            r8 = move-exception
            goto L89
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.f5689e
            androidx.datastore.core.CorruptionException r2 = (androidx.datastore.core.CorruptionException) r2
            java.lang.Object r4 = r0.f5688b
            androidx.datastore.core.SingleProcessDataStore r4 = (androidx.datastore.core.SingleProcessDataStore) r4
            kotlin.b.throwOnFailure(r8)
            goto L79
        L4b:
            java.lang.Object r2 = r0.f5688b
            androidx.datastore.core.SingleProcessDataStore r2 = (androidx.datastore.core.SingleProcessDataStore) r2
            kotlin.b.throwOnFailure(r8)     // Catch: androidx.datastore.core.CorruptionException -> L53
            return r8
        L53:
            r8 = move-exception
            goto L66
        L55:
            kotlin.b.throwOnFailure(r8)
            r0.f5688b = r7     // Catch: androidx.datastore.core.CorruptionException -> L64
            r0.f5692m = r5     // Catch: androidx.datastore.core.CorruptionException -> L64
            java.lang.Object r8 = r7.e(r0)     // Catch: androidx.datastore.core.CorruptionException -> L64
            if (r8 != r1) goto L63
            goto L85
        L63:
            return r8
        L64:
            r8 = move-exception
            r2 = r7
        L66:
            Y.a r5 = r2.f5626c
            r0.f5688b = r2
            r0.f5689e = r8
            r0.f5692m = r4
            java.lang.Object r4 = r5.handleCorruption(r8, r0)
            if (r4 != r1) goto L75
            goto L85
        L75:
            r6 = r2
            r2 = r8
            r8 = r4
            r4 = r6
        L79:
            r0.f5688b = r2     // Catch: java.io.IOException -> L87
            r0.f5689e = r8     // Catch: java.io.IOException -> L87
            r0.f5692m = r3     // Catch: java.io.IOException -> L87
            java.lang.Object r0 = r4.writeData$datastore_core(r8, r0)     // Catch: java.io.IOException -> L87
            if (r0 != r1) goto L86
        L85:
            return r1
        L86:
            return r8
        L87:
            r8 = move-exception
            r0 = r2
        L89:
            u5.AbstractC1702a.addSuppressed(r0, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.f(y5.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(y5.InterfaceC1952k r8, H5.p r9, y5.InterfaceC1944c r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = (androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1) r0
            int r1 = r0.f5698n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5698n = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = new androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f5696j
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5698n
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L45
            if (r2 == r5) goto L39
            if (r2 != r4) goto L31
            java.lang.Object r8 = r0.f5694e
            androidx.datastore.core.SingleProcessDataStore r9 = r0.f5693b
            kotlin.b.throwOnFailure(r10)
            goto L8c
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            java.lang.Object r8 = r0.f5695f
            java.lang.Object r9 = r0.f5694e
            Y.b r9 = (Y.b) r9
            androidx.datastore.core.SingleProcessDataStore r2 = r0.f5693b
            kotlin.b.throwOnFailure(r10)
            goto L71
        L45:
            kotlin.b.throwOnFailure(r10)
            U5.k r10 = r7.f5630g
            kotlinx.coroutines.flow.StateFlowImpl r10 = (kotlinx.coroutines.flow.StateFlowImpl) r10
            java.lang.Object r10 = r10.getValue()
            Y.b r10 = (Y.b) r10
            r10.checkHashCode()
            java.lang.Object r2 = r10.getValue()
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1 r6 = new androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1
            r6.<init>(r9, r2, r3)
            r0.f5693b = r7
            r0.f5694e = r10
            r0.f5695f = r2
            r0.f5698n = r5
            java.lang.Object r8 = R5.AbstractC0273g.withContext(r8, r6, r0)
            if (r8 != r1) goto L6d
            goto L89
        L6d:
            r9 = r10
            r10 = r8
            r8 = r2
            r2 = r7
        L71:
            r9.checkHashCode()
            boolean r9 = kotlin.jvm.internal.j.areEqual(r8, r10)
            if (r9 == 0) goto L7b
            return r8
        L7b:
            r0.f5693b = r2
            r0.f5694e = r10
            r0.f5695f = r3
            r0.f5698n = r4
            java.lang.Object r8 = r2.writeData$datastore_core(r10, r0)
            if (r8 != r1) goto L8a
        L89:
            return r1
        L8a:
            r8 = r10
            r9 = r2
        L8c:
            U5.k r9 = r9.f5630g
            Y.b r10 = new Y.b
            if (r8 == 0) goto L97
            int r0 = r8.hashCode()
            goto L98
        L97:
            r0 = 0
        L98:
            r10.<init>(r8, r0)
            kotlinx.coroutines.flow.StateFlowImpl r9 = (kotlinx.coroutines.flow.StateFlowImpl) r9
            r9.setValue(r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.g(y5.k, H5.p, y5.c):java.lang.Object");
    }

    @Override // Y.d
    public b getData() {
        return this.f5627d;
    }

    @Override // Y.d
    public Object updateData(p pVar, InterfaceC1944c interfaceC1944c) {
        InterfaceC0302v CompletableDeferred$default = AbstractC0304x.CompletableDeferred$default(null, 1, null);
        this.f5632i.offer(new Y.l(pVar, CompletableDeferred$default, (Y.p) ((StateFlowImpl) this.f5630g).getValue(), interfaceC1944c.getContext()));
        return ((C0303w) CompletableDeferred$default).await(interfaceC1944c);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a6 A[Catch: IOException -> 0x00bd, TRY_ENTER, TryCatch #3 {IOException -> 0x00bd, blocks: (B:14:0x0096, B:19:0x00a6, B:20:0x00bc, B:27:0x00c5, B:28:0x00c8, B:44:0x006c, B:24:0x00c3), top: B:43:0x006c, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData$datastore_core(java.lang.Object r8, y5.InterfaceC1944c r9) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.writeData$datastore_core(java.lang.Object, y5.c):java.lang.Object");
    }
}
