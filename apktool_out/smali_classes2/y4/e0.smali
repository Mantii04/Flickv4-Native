.class public final synthetic Ly4/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/e0;->b:I

    iput-object p1, p0, Ly4/e0;->e:Lflix/com/vision/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/e0;->e:Lflix/com/vision/activities/MainActivity;

    .line 2
    .line 3
    iget v1, p0, Ly4/e0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    sget v1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseSuggestions(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v1, v0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 20
    .line 21
    invoke-virtual {v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->addSuggestions(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 31
    .line 32
    sget v1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Sync failed: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    .line 62
    .line 63
    const-string v0, "Trakt"

    .line 64
    .line 65
    const-string v1, "Sync Error"

    .line 66
    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
