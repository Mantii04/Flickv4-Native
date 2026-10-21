.class public final Ln2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq2/h;

.field public final b:Lq2/h;

.field public final c:Lq2/h;

.field public final d:Lq2/h;

.field public final e:Lcom/bumptech/glide/load/engine/b;

.field public final f:Lcom/bumptech/glide/load/engine/b;

.field public final g:LL/e;


# direct methods
.method public constructor <init>(Lq2/h;Lq2/h;Lq2/h;Lq2/h;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln2/x;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ln2/x;-><init>(Ln2/y;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x96

    .line 10
    .line 11
    invoke-static {v1, v0}, LH2/h;->threadSafe(ILH2/d;)LL/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln2/y;->g:LL/e;

    .line 16
    .line 17
    iput-object p1, p0, Ln2/y;->a:Lq2/h;

    .line 18
    .line 19
    iput-object p2, p0, Ln2/y;->b:Lq2/h;

    .line 20
    .line 21
    iput-object p3, p0, Ln2/y;->c:Lq2/h;

    .line 22
    .line 23
    iput-object p4, p0, Ln2/y;->d:Lq2/h;

    .line 24
    .line 25
    iput-object p5, p0, Ln2/y;->e:Lcom/bumptech/glide/load/engine/b;

    .line 26
    .line 27
    iput-object p6, p0, Ln2/y;->f:Lcom/bumptech/glide/load/engine/b;

    .line 28
    .line 29
    return-void
.end method
