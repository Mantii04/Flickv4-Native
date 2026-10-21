.class public final Ls2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls2/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    new-instance p1, Ls2/f;

    .line 2
    .line 3
    iget-object v0, p0, Ls2/e;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ls2/f;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
