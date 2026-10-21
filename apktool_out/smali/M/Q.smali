.class public final LM/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/PointerIcon;


# direct methods
.method public constructor <init>(Landroid/view/PointerIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/Q;->a:Landroid/view/PointerIcon;

    .line 5
    .line 6
    return-void
.end method

.method public static getSystemIcon(Landroid/content/Context;I)LM/Q;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LM/Q;

    .line 8
    .line 9
    invoke-static {p0, p1}, LM/P;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, LM/Q;-><init>(Landroid/view/PointerIcon;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance p0, LM/Q;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, LM/Q;-><init>(Landroid/view/PointerIcon;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LM/Q;->a:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method
