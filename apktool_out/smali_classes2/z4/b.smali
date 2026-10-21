.class public final synthetic Lz4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/b;->b:I

    iput-object p1, p0, Lz4/b;->e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lz4/b;->e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 4
    .line 5
    iget v2, p0, Lz4/b;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    sget v2, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->w:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "Error fetching URL"

    .line 22
    .line 23
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->e()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 31
    .line 32
    sget v2, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->w:I

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseAdultCategories(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-lez v2, :cond_0

    .line 48
    .line 49
    iget-object v2, v1, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    iget-object p1, v1, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->t:LC4/d;

    .line 58
    .line 59
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "Error parsing JSON"

    .line 68
    .line 69
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->e()V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
