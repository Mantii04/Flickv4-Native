.class public final Le/E;
.super LM/E0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/F;


# direct methods
.method public constructor <init>(Le/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/E;->a:Le/F;

    .line 2
    .line 3
    invoke-direct {p0}, LM/E0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/E;->a:Le/F;

    .line 2
    .line 3
    iget-object v0, p1, Le/F;->b:Le/a0;

    .line 4
    .line 5
    iget-object v0, v0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Le/F;->b:Le/a0;

    .line 13
    .line 14
    iget-object v0, v0, Le/a0;->H:LM/C0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, LM/C0;->setListener(LM/D0;)LM/C0;

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Le/F;->b:Le/a0;

    .line 21
    .line 22
    iput-object v1, p1, Le/a0;->H:LM/C0;

    .line 23
    .line 24
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/E;->a:Le/F;

    .line 2
    .line 3
    iget-object p1, p1, Le/F;->b:Le/a0;

    .line 4
    .line 5
    iget-object p1, p1, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
