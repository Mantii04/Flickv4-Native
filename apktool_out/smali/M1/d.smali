.class public final LM1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroidx/work/impl/utils/futures/b;

.field public final e:LV3/F;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/futures/b;LV3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM1/d;->b:Landroidx/work/impl/utils/futures/b;

    .line 5
    .line 6
    iput-object p2, p0, LM1/d;->e:LV3/F;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LM1/d;->b:Landroidx/work/impl/utils/futures/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/utils/futures/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LM1/d;->e:LV3/F;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/work/impl/utils/futures/b;->e(LV3/F;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/work/impl/utils/futures/b;->n:Lcom/bumptech/glide/e;

    .line 15
    .line 16
    iget-object v2, p0, LM1/d;->b:Landroidx/work/impl/utils/futures/b;

    .line 17
    .line 18
    invoke-virtual {v1, v2, p0, v0}, Lcom/bumptech/glide/e;->b(Landroidx/work/impl/utils/futures/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, LM1/d;->b:Landroidx/work/impl/utils/futures/b;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/work/impl/utils/futures/b;->b(Landroidx/work/impl/utils/futures/b;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
