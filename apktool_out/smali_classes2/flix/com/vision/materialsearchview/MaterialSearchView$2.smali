.class Lflix/com/vision/materialsearchview/MaterialSearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$2;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$2;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/materialsearchview/MaterialSearchView;->C:Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;->onVoiceClicked()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.speech.extra.PROMPT"

    .line 19
    .line 20
    iget-object v2, p1, Lflix/com/vision/materialsearchview/MaterialSearchView;->p:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 26
    .line 27
    const-string v2, "free_form"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "android.speech.extra.MAX_RESULTS"

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 39
    .line 40
    instance-of v1, p1, Landroid/app/Activity;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    check-cast p1, Landroid/app/Activity;

    .line 45
    .line 46
    const/16 v1, 0x2a

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
