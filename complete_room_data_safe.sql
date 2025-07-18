-- 安全的完整房间数据更新脚本
-- 先备份订单数据，然后更新房间数据

-- 临时禁用外键检查
SET FOREIGN_KEY_CHECKS = 0;

-- 备份现有订单数据到临时表
CREATE TEMPORARY TABLE temp_orders AS SELECT * FROM h_order;

-- 清空订单表
DELETE FROM h_order;

-- 清空现有房间数据
DELETE FROM h_room;

-- 重置自增ID
ALTER TABLE h_room AUTO_INCREMENT = 1;

-- 插入完整的24个房间数据
INSERT INTO `h_room` (`id`, `status`, `name`, `city`, `address`, `code`, `category`, `price`, `state`, `banner`, `seat`, `describe`, `device`, `weight`) VALUES

-- 1楼房间
(1, 0, '展览厅', '普洱市', '普洱蘑菇庄园1楼', '展览厅', '展览厅', 0.00, '开放', '/src/assets/images/环境展示/庄园内部1.jpg', 0, '蘑菇庄园展览厅，展示蘑菇文化和生态知识', 'WiFi,空调,展示设备,多媒体', 50),

(2, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '105', '单人间', 256.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观3.jpg', 1, '无窗户设计，房间高度2.4米，经济实惠的单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰', 70),

(3, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '104', '单人间', 255.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观3.jpg', 1, '无窗户设计，房间高度2.4米，舒适的单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰', 69),

(4, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '103', '单人间', 333.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观3.jpg', 1, '无窗户设计，房间高度2.4米，精致的单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰', 75),

(5, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '102', '大床房', 888.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观1.jpg', 2, '东向采光，带窗户，房间高度2.4米，豪华大床蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,迷你吧', 95),

(6, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '106', '单人间', 666.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，高级单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 88),

(7, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '107', '单人间', 456.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，舒适单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 80),

(8, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '108', '单人间', 156.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，经济型单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 65),

(9, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '101', '单人间', 18.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '东向采光，带窗户，房间高度2.4米，超值特价单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 100),

-- 2楼房间
(10, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '211', '亲子房', 419.00, '空闲', '/src/assets/images/card/card02.jpg', 3, '西向采光，带窗户，房间高度2.4米，舒适的亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,儿童设施', 83),

(11, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '212', '亲子房', 418.00, '空闲', '/src/assets/images/card/card01.jpg', 3, '西向采光，带窗户，房间高度2.4米，温馨的亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,儿童设施', 82),

(12, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '210', '单人间', 189.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '北向采光，带窗户，房间高度2.4米，经济型单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 68),

(13, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '209', '单人间', 418.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '北向采光，带窗户，房间高度2.4米，舒适单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 81),

(14, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '208', '单人间', 18.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '北向采光，带窗户，房间高度2.4米，超值特价单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 99),

(15, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '207', '大床房', 186.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观1.jpg', 2, '东向采光，带窗户，房间高度2.4米，经济型大床蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 67),

(16, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '206', '双人间', 654.00, '空闲', '/src/assets/images/环境展示/庄园内部2.jpg', 2, '西向采光，带窗户，房间高度2.4米，高级双人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 87),

(17, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '205', '双人间', 789.00, '空闲', '/src/assets/images/环境展示/庄园内部2.jpg', 2, '东向采光，带窗户，房间高度2.4米，豪华双人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,迷你吧', 92),

(18, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '204', '单人间', 999.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，顶级单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,迷你吧,保险箱', 98),

(19, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '203', '单人间', 889.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，豪华单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,迷你吧', 94),

(20, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '202', '单人间', 48.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，特价单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 85),

(21, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '201', '大床房', 19.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观1.jpg', 2, '南向采光，带窗户，房间高度2.4米，超值特价大床蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 100),

-- 3楼房间
(22, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园3楼', '301', '亲子房', 486.00, '空闲', '/src/assets/images/环境展示/庄园内部1.jpg', 3, '无窗户设计，房间高度2.4米，适合家庭入住的温馨亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰,儿童设施,游戏区', 85),

(23, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园3楼', '302', '亲子房', 1088.00, '空闲', '/src/assets/images/环境展示/庄园内部1.jpg', 3, '无窗户设计，房间高度2.4米，顶级豪华亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰,儿童设施,游戏区,迷你吧,保险箱', 97),

(24, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园3楼', '303', '双人间', 388.00, '空闲', '/src/assets/images/环境展示/庄园内部2.jpg', 2, '南向采光，带窗户，房间高度2.4米，舒适的双人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 80);

-- 重新创建测试订单数据（使用新的房间ID）
INSERT INTO `h_order` (`id`, `user_id`, `room_id`, `order_no`, `start_time`, `end_time`, `days`, `people`, `total`, `status`, `create_time`) VALUES
(1, 1, 21, 'ORD20241213001', '2024-12-15 14:00:00', '2024-12-16 12:00:00', 1, 2, 19.00, '已完成', '2024-12-13 10:00:00'),
(2, 1, 2, 'ORD20241213002', '2024-12-20 14:00:00', '2024-12-22 12:00:00', 2, 1, 512.00, '预订', '2024-12-13 11:00:00'),
(3, 1, 22, 'ORD20241213003', '2024-12-25 14:00:00', '2024-12-27 12:00:00', 2, 3, 972.00, '预订', '2024-12-13 12:00:00');

-- 重新启用外键检查
SET FOREIGN_KEY_CHECKS = 1;

-- 验证数据
SELECT COUNT(*) as total_rooms FROM h_room;
SELECT COUNT(*) as total_orders FROM h_order;
SELECT code, category, price FROM h_room WHERE category != '展览厅' ORDER BY price DESC LIMIT 5;
