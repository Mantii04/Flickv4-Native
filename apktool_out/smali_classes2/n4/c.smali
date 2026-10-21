.class public final Ln4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Bundle;

.field public c:Ln4/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln4/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Lcom/thebluealliance/spectrum/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/thebluealliance/spectrum/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/thebluealliance/spectrum/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/C;->setArguments(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ln4/c;->c:Ln4/d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/thebluealliance/spectrum/a;->setOnColorSelectedListener(Ln4/d;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setColors(I)Ln4/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln4/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "colors"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public setDismissOnColorSelected(Z)Ln4/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "should_dismiss_on_color_selected"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public setOnColorSelectedListener(Ln4/d;)Ln4/c;
    .locals 0

    .line 1
    iput-object p1, p0, Ln4/c;->c:Ln4/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOutlineWidth(I)Ln4/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "border_width"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public setSelectedColorRes(I)Ln4/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln4/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "selected_color"

    .line 8
    .line 9
    iget-object v1, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string v0, "origina_selected_color"

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setTitle(I)Ln4/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln4/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ln4/c;->b:Landroid/os/Bundle;

    .line 8
    .line 9
    const-string v1, "title"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
