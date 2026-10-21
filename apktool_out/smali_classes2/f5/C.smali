.class public final synthetic Lf5/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/tv/TVCategoriesActivity;

.field public final synthetic f:Lflix/com/vision/tv/TVCategory;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/tv/TVCategoriesActivity;Lflix/com/vision/tv/TVCategory;I)V
    .locals 0

    .line 1
    iput p3, p0, Lf5/C;->b:I

    iput-object p1, p0, Lf5/C;->e:Lflix/com/vision/tv/TVCategoriesActivity;

    iput-object p2, p0, Lf5/C;->f:Lflix/com/vision/tv/TVCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "prefs_tv_category_fav_set"

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lf5/C;->f:Lflix/com/vision/tv/TVCategory;

    .line 5
    .line 6
    iget-object v2, p0, Lf5/C;->e:Lflix/com/vision/tv/TVCategoriesActivity;

    .line 7
    .line 8
    iget v3, p0, Lf5/C;->b:I

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lflix/com/vision/tv/TVCategoriesActivity;->openCategory(Lflix/com/vision/tv/TVCategory;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget v3, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "Added To Favorites"

    .line 25
    .line 26
    invoke-static {v2, v3, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {v1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, v2, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lflix/com/vision/tv/TVCategoriesActivity;->updateFavoritesBar()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    sget p1, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lflix/com/vision/tv/TVCategoriesActivity;->openCategory(Lflix/com/vision/tv/TVCategory;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    sget v3, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v3, "Removed From Favorites"

    .line 73
    .line 74
    invoke-static {v2, v3, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v2, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {v1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, v2, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 97
    .line 98
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lflix/com/vision/tv/TVCategoriesActivity;->updateFavoritesBar()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
