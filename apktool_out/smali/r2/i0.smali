.class public final Lr2/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/i0;->a:Landroid/content/res/Resources;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    new-instance p1, Lr2/j0;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/i0;->a:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-static {}, Lr2/u0;->getInstance()Lr2/u0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p1, v0, v1}, Lr2/j0;-><init>(Landroid/content/res/Resources;Lr2/V;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
