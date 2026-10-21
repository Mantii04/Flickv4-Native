.class public final Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp/g;

.field public final b:LL0/f;

.field public c:Lcom/bumptech/glide/load/engine/b;

.field public d:Lo2/d;

.field public e:Lo2/l;

.field public f:Lp2/k;

.field public g:Lq2/h;

.field public h:Lq2/h;

.field public i:Lp2/j;

.field public j:Lp2/q;

.field public k:Lcom/bumptech/glide/manager/e;

.field public final l:I

.field public final m:Lcom/bumptech/glide/d;

.field public n:Lq2/h;

.field public o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lp/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/g;->a:Lp/g;

    .line 10
    .line 11
    new-instance v0, LL0/f;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, LL0/f;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/g;->b:LL0/f;

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iput v0, p0, Lcom/bumptech/glide/g;->l:I

    .line 21
    .line 22
    new-instance v0, Lcom/bumptech/glide/d;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/d;

    .line 28
    .line 29
    return-void
.end method
