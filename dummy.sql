-- Skill 테이블에 더미 데이터 삽입
INSERT INTO "Skill" ("id", "name", "description", "createdAt", "updatedAt")
VALUES 
  ('skill1', '주의 집중력', '새로운 것을 배울 때 더 잘 이해하고 기억할 수 있어요. 집중력을 향상시켜 학습 효율을 높입니다.', NOW(), NOW()),
  ('skill2', '문제 해결력', '복잡한 상황에서도 논리적으로 생각하고 해결책을 찾아낼 수 있어요.', NOW(), NOW()),
  ('skill3', '창의적 사고', '기존의 틀에서 벗어나 새로운 아이디어를 떠올리고 표현할 수 있어요.', NOW(), NOW()),
  ('skill4', '기억력', '중요한 정보를 효과적으로 저장하고 필요할 때 빠르게 떠올릴 수 있어요.', NOW(), NOW());

-- Game 테이블에 더미 데이터 삽입 (GamePaywall 필드 추가)
INSERT INTO "Game" ("id", "gameId", "name", "description", "iconUrl", "coverUrl", "playDuration", "relatedSkillId", "status", "paywall", "createdAt", "updatedAt")
VALUES 
  ('game1', 'game001', '단어 팡팡', '신문 속 추억의 낱말 퀴즈! 글자 속에 숨어있는 낱말을 찾아볼까요? 다양한 주제의 단어들을 발견하며 어휘력을 키워보세요.', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 30, 'skill1', 'ACTIVE', 'FREE', NOW(), NOW()),
  ('game2', 'game002', '마법의 단어사전', '이런! 단어들이 마법에 걸려 뒤죽박죽 섞여버렸어요. 원래 순서대로 단어를 배열하고 문장의 의미를 완성해보세요.', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 45, 'skill2', 'ACTIVE', 'FREE', NOW(), NOW()),
  ('game3', 'game003', '별 하나 나 하나', '밤하늘을 수놓은 수많은 별들을 이어 별자리를 만들어 주세요! 아름다운 별자리 이야기와 함께 상상력을 키워보세요.', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 20, 'skill3', 'ACTIVE', 'PREMIUM', NOW(), NOW()),
  ('game4', 'game004', '숨은 퍼즐', '숨겨진 단서를 찾아 퍼즐을 해결하는 게임. 관찰력과 논리적 사고를 활용해 미스터리를 풀어보세요.', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 25, 'skill1', 'HIDDEN', 'FREE', NOW(), NOW()),
  ('game5', 'game005', '기억의 궁전', '순간적으로 보여지는 패턴을 기억하고 재현하는 기억력 게임. 단계가 올라갈수록 더 복잡해지는 도전!', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 15, 'skill4', 'ACTIVE', 'FREE', NOW(), NOW()),
  ('game6', 'game006', '수학 마법사', '재미있는 수학 문제를 풀며 논리적 사고력을 키워보세요. 다양한 난이도의 퍼즐이 준비되어 있습니다.', 'https://thumbs.dreamstime.com/b/example-text-green-round-grungy-texture-stamp-205333146.jpg', 'https://thumbs.dreamstime.com/b/example-sticker-example-rounded-isolated-sign-example-example-sticker-158775926.jpg', 40, 'skill2', 'ACTIVE', 'PREMIUM', NOW(), NOW());
