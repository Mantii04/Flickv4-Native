.class public final Lcom/bumptech/glide/load/data/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/f;


# instance fields
.field public final a:Lo2/b;


# direct methods
.method public constructor <init>(Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/data/p;->a:Lo2/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build(Ljava/io/InputStream;)Lcom/bumptech/glide/load/data/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/bumptech/glide/load/data/g;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/data/q;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/p;->a:Lo2/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/data/q;-><init>(Ljava/io/InputStream;Lo2/b;)V

    return-object v0
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/data/p;->build(Ljava/io/InputStream;)Lcom/bumptech/glide/load/data/g;

    move-result-object p1

    return-object p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method
