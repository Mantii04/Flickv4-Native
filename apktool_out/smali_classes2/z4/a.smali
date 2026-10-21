.class public final synthetic Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/a;->b:I

    iput-object p1, p0, Lz4/a;->e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lz4/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz4/a;->e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lz4/a;->e:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 16
    .line 17
    iput-boolean v0, v1, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->u:Z

    .line 18
    .line 19
    return-void

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
