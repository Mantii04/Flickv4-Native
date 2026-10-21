.class public final Ll/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lk/p;

.field public final c:Landroid/view/View;

.field public final d:Lk/C;

.field public e:Ll/u1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .line 2
    sget v4, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ll/v1;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ll/v1;->c:Landroid/view/View;

    .line 6
    new-instance v2, Lk/p;

    invoke-direct {v2, p1}, Lk/p;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ll/v1;->b:Lk/p;

    .line 7
    new-instance v0, Ll/s1;

    invoke-direct {v0, p0}, Ll/s1;-><init>(Ll/v1;)V

    invoke-virtual {v2, v0}, Lk/p;->setCallback(Lk/n;)V

    .line 8
    new-instance v0, Lk/C;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lk/C;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZII)V

    iput-object v0, p0, Ll/v1;->d:Lk/C;

    .line 9
    invoke-virtual {v0, p3}, Lk/C;->setGravity(I)V

    .line 10
    new-instance p1, Ll/t1;

    invoke-direct {p1, p0}, Ll/t1;-><init>(Ll/v1;)V

    invoke-virtual {v0, p1}, Lk/C;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v1;->d:Lk/C;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/C;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v1;->b:Lk/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Lj/l;

    .line 2
    .line 3
    iget-object v1, p0, Ll/v1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lj/l;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public setOnMenuItemClickListener(Ll/u1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/v1;->e:Ll/u1;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v1;->d:Lk/C;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/C;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
