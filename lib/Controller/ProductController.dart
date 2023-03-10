import 'package:get/state_manager.dart';
import '../Models/Product.dart';

class ProductController extends GetxController {
  var prodcuts = <Product>[].obs;
  @override
  void onInit() {
    load();
    super.onInit();
  }

  void load() async {
    var GetProduct = [
      Product(
        name: "Nike PG 2 ",
        detail:
            "สไตล์การเล่นของ Paul George ต้องการรองเท้าที่แนบกระชับขั้นสุดและรองรับได้ดี Hardman เพิ่มโซนยืดหยุ่นที่ปลายเท้าเพื่อเสริมการรองรับ ซึ่งปรับรับกับเท้าของ PG เมื่อเขาเคลื่อนไหว จากนั้นเขาได้เพิ่มปีกแบบไดนามิกที่ด้านบนโซนยืดหยุ่นเพื่อการรองรับที่ดียิ่งกว่า “ส่วนนี้ทำให้โอบรับได้ดีเหมือน PG 1 เลยครับ” Hardman กล่าว “แต่ก็ช่วยขจัดปัญหาสำหรับคนหน้าเท้าแคบ เวลาที่สายรัดคาดอยู่ไกลเกินไปครับ",
        price: 2289,
      ),
      Product(
        name: "Nike Air Force",
        detail:
            "ความเบิกบานดำรงอยู่ใน Nike Air Force 1 '07 รองเท้าบาสรุ่น OG ที่ใส่ลูกเล่นสดใหม่ให้กับสิ่งที่คุณรู้จักดีที่สุด ไม่ว่าจะเป็นส่วนหุ้มชั้นนอกแบบเย็บติดที่ทนทาน ลวดลายสะอาดตา และความวิบวับที่ลงตัวซึ่งทำให้คุณเปล่งประกาย",
        price: 3700,
      ),
      Product(
        name: "Nike Air Max",
        detail:
            "ส่วนส้นใหญ่ยักษ์ที่มองเห็นได้เต็มตาแบบ 270° ของคู่นี้เป็นการประกาศศักดาที่โดดเด่นที่สุดครั้งหนึ่งในประวัติศาสตร์แห่ง Air Max รองเท้าคู่นี้จึงใส่สบายที่สุดคู่หนึ่งเพราะส่วนบนมีน้ำหนักเบาและแนบกระชับพอดี",
        price: 3800,
      ),
      Product(
        name: "Nike Hyperdunk",
        detail:
            "Nike Hyperdunk X Low อวดประสิทธิภาพระดับตำนานมาตั้งแต่ปี 2008 จึงไม่ต้องงัดกลเม็ดไม้เด็ดใดๆ เพื่อให้โดดเด่น โดยมาพร้อมส่วน Zoom Air ที่ช่วยลดแรงกระแทกได้ยอดเยี่ยมที่สุดในตลาดซึ่งคุณจะเห็นและสัมผัสได้ ขณะที่ระบบร้อยเชือกรองเท้าแบบไดนามิกช่วยให้เท้ากระชับและมั่นคง คุณจึงมีสมาธิกับเกมได้เต็มที่",
        price: 5790,
      ),
      Product(
        name: "Nike Pegasus",
        detail:
            "ท้องถนนคือสนามวิ่งของคุณ พร้อมพุ่งทะยานไปกับม้าเร็วติดปีก คู่นี้กลับมาอีกครั้งพร้อมการดีดตัวพิเศษที่เหมาะกับการวิ่งบนทางเท้า ไม่ว่าจะวิ่งสะสมระยะทางทุกวันหรือวิ่งระยะไกล คุณจะสัมผัสถึงการสปริงตัวในทุกก้าวย่างด้วยการรองรับที่พร้อมลดแรงกระแทกแบบเดียวกับรุ่นก่อนหน้า มาพร้อมตาข่ายระบายอากาศได้ดีที่ส่วนบนซึ่งผสานความสบายและความทนทานในแบบที่ต้องการเข้ากับทรงที่กว้างขึ้นตรงปลายเท้า",
        price: 4700,
      ),
    ];
    prodcuts.assignAll(GetProduct);
  }
}
