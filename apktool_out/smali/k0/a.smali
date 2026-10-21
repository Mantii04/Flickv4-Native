.class public final Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic e:Landroidx/leanback/widget/picker/DatePicker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/DatePicker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk0/a;->e:Landroidx/leanback/widget/picker/DatePicker;

    .line 5
    .line 6
    iput-boolean p2, p0, Lk0/a;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lk0/a;->e:Landroidx/leanback/widget/picker/DatePicker;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/picker/DatePicker;->D:I

    .line 4
    .line 5
    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->C:I

    .line 6
    .line 7
    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->E:I

    .line 8
    .line 9
    filled-new-array {v1, v2, v3}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x2

    .line 15
    move v4, v2

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ltz v3, :cond_8

    .line 18
    .line 19
    aget v6, v1, v3

    .line 20
    .line 21
    if-gez v6, :cond_0

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    sget-object v7, Landroidx/leanback/widget/picker/DatePicker;->L:[I

    .line 26
    .line 27
    aget v7, v7, v3

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Lk0/e;->getColumnAt(I)Lk0/f;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 37
    .line 38
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    invoke-virtual {v6}, Lk0/f;->getMinValue()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eq v9, v10, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6, v9}, Lk0/f;->setMinValue(I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    move v9, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    move v9, v8

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 56
    .line 57
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-virtual {v6}, Lk0/f;->getMinValue()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eq v9, v10, :cond_1

    .line 66
    .line 67
    invoke-virtual {v6, v9}, Lk0/f;->setMinValue(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 74
    .line 75
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    invoke-virtual {v6}, Lk0/f;->getMaxValue()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eq v10, v11, :cond_3

    .line 84
    .line 85
    invoke-virtual {v6, v10}, Lk0/f;->setMaxValue(I)V

    .line 86
    .line 87
    .line 88
    :goto_3
    move v10, v2

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    move v10, v8

    .line 91
    :goto_4
    or-int/2addr v9, v10

    .line 92
    goto :goto_5

    .line 93
    :cond_4
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 94
    .line 95
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-virtual {v6}, Lk0/f;->getMaxValue()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eq v10, v11, :cond_3

    .line 104
    .line 105
    invoke-virtual {v6, v10}, Lk0/f;->setMaxValue(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :goto_5
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 110
    .line 111
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 116
    .line 117
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-ne v10, v11, :cond_5

    .line 122
    .line 123
    move v10, v2

    .line 124
    goto :goto_6

    .line 125
    :cond_5
    move v10, v8

    .line 126
    :goto_6
    and-int/2addr v4, v10

    .line 127
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 128
    .line 129
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 134
    .line 135
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-ne v10, v11, :cond_6

    .line 140
    .line 141
    move v8, v2

    .line 142
    :cond_6
    and-int/2addr v5, v8

    .line 143
    if-eqz v9, :cond_7

    .line 144
    .line 145
    aget v8, v1, v3

    .line 146
    .line 147
    invoke-virtual {v0, v8, v6}, Lk0/e;->setColumnAt(ILk0/f;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    aget v6, v1, v3

    .line 151
    .line 152
    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 153
    .line 154
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    iget-boolean v8, p0, Lk0/a;->b:Z

    .line 159
    .line 160
    invoke-virtual {v0, v6, v7, v8}, Lk0/e;->setColumnValue(IIZ)V

    .line 161
    .line 162
    .line 163
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_8
    return-void
.end method
