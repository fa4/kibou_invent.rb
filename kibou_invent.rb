# -*- coding: utf-8 -*-
#改変プラグイン penguin2716/mikutter_credit.rb
#改変プラグイン katsyoshi/jotei.rb
#Author fars3514

Plugin.create :kibou_invent do
  command(:kibou_invent,
          name: '超高校級な入学案内',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |m|

      magic_title = ['童貞','希望','殺し屋','幸運','絶望','ビッチ',
                     '神経学者','御曹司','占い師','同人作家','アイドル','野球選手',
                     '諜報員','探偵','スイマー','風紀委員','文学少女','暴走族','格闘家',
                     'ボディーガード','ギャンブラー','ギャル','プログラマー','軍人',
                     '生徒会長', '料理人', '写真家', '極道', '軽音部', 'ゲーマー',
                     'マネージャー', '体操部', '剣道家', '日本武闘家', '王女', 'メカニック',
                     '飼育委員', '保健委員', '植物学者', '分析能力者', 'ておくれ']

      Service.primary.post(:message => "　　入学案内   #{Time.now.strftime('%Y年%m月%d日')}
　　　　@#{m.user.to_s} 殿

　あなたを「超高校級の#{magic_title[rand(magic_title.size)]}」として
我が校に招き入れる事になりました。
 つきましては、入学するにあたり
希望ヶ峰学園の入学案内パンフレットを
同封いたします。

　　　　学長 @#{Service.primary.user.to_s}", :replyto => m)

      }
  end
end
