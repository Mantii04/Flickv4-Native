.class public final LV3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/google/common/util/concurrent/b;

.field public final e:LV3/F;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/b;LV3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV3/d;->b:Lcom/google/common/util/concurrent/b;

    .line 5
    .line 6
    iput-object p2, p0, LV3/d;->e:LV3/F;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LV3/d;->b:Lcom/google/common/util/concurrent/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/util/concurrent/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LV3/d;->e:LV3/F;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->f(LV3/F;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/common/util/concurrent/b;->n:Lcom/bumptech/glide/f;

    .line 15
    .line 16
    iget-object v2, p0, LV3/d;->b:Lcom/google/common/util/concurrent/b;

    .line 17
    .line 18
    invoke-virtual {v1, v2, p0, v0}, Lcom/bumptech/glide/f;->b(Lcom/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, LV3/d;->b:Lcom/google/common/util/concurrent/b;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/b;->c(Lcom/google/common/util/concurrent/b;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
