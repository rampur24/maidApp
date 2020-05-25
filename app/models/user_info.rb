class UserInfo < ApplicationRecord
 def self.get_all_userinfo
    points = UserInfo.select('UserID, PhoneNumber, Gender, Age, UserType, AcountCreationDate, LastUpdate, IsAcountActive, UserCity, UserArea, PinCode, LocalAddress, Latitute, Longitude, GovtIDVerified, ServiceType')
    array = []     
    points.each do |point|
      res = {}
      res['UserID'] = point.UserID
      res['PhoneNumber'] = point.PhoneNumber
      res['Gender'] = point.Gender
      res['Age'] = point.Age
      res['UserType'] = point.UserType
      res['AcountCreationDate'] = point.AcountCreationDate
      res['LastUpdate'] = point.LastUpdate
      res['IsAcountActive'] = point.IsAcountActive
      res['UserCity'] = point.UserCity
      res['UserArea'] = point.UserArea
       res['PinCode'] = point.PinCode
      res['LocalAddress'] = point.LocalAddress
      res['Latitute'] = point.Latitute
      res['Longitude'] = point.Longitude
      res['GovtIDVerified'] = point.GovtIDVerified
      res['ServiceType'] = point.ServiceType
      
       array << res 
     end
    array
  end

end
