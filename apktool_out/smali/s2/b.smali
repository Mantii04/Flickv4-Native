.class public final Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# static fields
.field public static final b:Ll2/p;


# instance fields
.field public final a:Lr2/T;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9c4

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ls2/b;->b:Ll2/p;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lr2/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/T;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls2/b;->a:Lr2/T;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Lr2/I;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls2/b;->buildLoadData(Lr2/I;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData(Lr2/I;IILl2/q;)Lr2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/I;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Ls2/b;->a:Lr2/T;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3, p3}, Lr2/T;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2, p1, p3, p3, p1}, Lr2/T;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 5
    :cond_1
    :goto_0
    sget-object p2, Ls2/b;->b:Ll2/p;

    invoke-virtual {p4, p2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 6
    new-instance p3, Lr2/U;

    new-instance p4, Lcom/bumptech/glide/load/data/o;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/o;-><init>(Lr2/I;I)V

    invoke-direct {p3, p1, p4}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object p3
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lr2/I;

    invoke-virtual {p0, p1}, Ls2/b;->handles(Lr2/I;)Z

    move-result p1

    return p1
.end method

.method public handles(Lr2/I;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
