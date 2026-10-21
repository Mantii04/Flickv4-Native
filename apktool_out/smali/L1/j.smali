.class public final synthetic LL1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:LL1/k;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LL1/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/j;->b:LL1/k;

    iput p2, p0, LL1/j;->e:I

    iput p3, p0, LL1/j;->f:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    iget-object v1, p0, LL1/j;->b:LL1/k;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LL1/k;->a:Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    const-string v2, "next_job_scheduler_id"

    .line 11
    .line 12
    invoke-static {v0, v2}, LL1/l;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v3, p0, LL1/j;->e:I

    .line 17
    .line 18
    if-gt v3, v0, :cond_0

    .line 19
    .line 20
    iget v4, p0, LL1/j;->f:I

    .line 21
    .line 22
    if-gt v0, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v0, v3, 0x1

    .line 26
    .line 27
    iget-object v1, v1, LL1/k;->a:Landroidx/work/impl/WorkDatabase;

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, LL1/l;->access$updatePreference(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    move v0, v3

    .line 33
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
