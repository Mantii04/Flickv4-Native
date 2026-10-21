.class public final Lr2/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr2/r0;

    .line 2
    .line 3
    const-class v1, Landroid/net/Uri;

    .line 4
    .line 5
    const-class v2, Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Lr2/f0;->build(Ljava/lang/Class;Ljava/lang/Class;)Lr2/V;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Lr2/r0;-><init>(Lr2/V;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
