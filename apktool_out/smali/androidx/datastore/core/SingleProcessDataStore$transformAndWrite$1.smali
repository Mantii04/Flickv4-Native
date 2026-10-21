.class final Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime LA5/d;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x192,
        0x19a
    }
    m = "transformAndWrite"
.end annotation


# instance fields
.field public b:Landroidx/datastore/core/SingleProcessDataStore;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic m:Landroidx/datastore/core/SingleProcessDataStore;

.field public n:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->m:Landroidx/datastore/core/SingleProcessDataStore;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Ly5/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:Ljava/lang/Object;

    iget p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->m:Landroidx/datastore/core/SingleProcessDataStore;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Landroidx/datastore/core/SingleProcessDataStore;->access$transformAndWrite(Landroidx/datastore/core/SingleProcessDataStore;LH5/p;Ly5/k;Ly5/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
