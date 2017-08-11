#!/usr/bin/perl
#
#
use strict;
use File::Temp;
use Cwd;

sub install_package
{
	my $url = @_[0];

	my $oldcwd = getcwd;
	# Create a temporary directory
	my $dirname = File::Temp->newdir;
# Go to the temporary directory
	chdir $dirname  || die("Can not chdir($dirname) : $!");
	`wget $url`;

	if (rindex($url, "/") != -1)
	{
		my $filename = substr $url, rindex($url, "/")+1;
		`ar xv $filename`;
		print `sudo tar xzvf data.tar.gz -C /usr/arm-frc-linux-gnueabi`;
	}
	
	chdir $oldcwd;
}
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost-dev_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost-serialization_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost-staticdev_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost-staticdev_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost-test_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/boost_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-atomic1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-chrono1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-date-time1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-filesystem1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-graph1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-iostreams1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-program-options1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-regex1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-signals1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-system1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libboost-thread1.57.0_1.57.0-r0.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libeigen-dev_3.2.0-r0.15_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libpython2_2.7.9-r1.117_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/python-core_2.7.9-r1.117_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/python-dev_2.7.9-r1.117_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libcurl-dev_7.40.0-r0.11_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libcurl4_7.40.0-r0.11_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/lz4-dev_r127-r0.10_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/lz4_r127-r0.10_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libbz2-0_1.0.6-r5.205_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libbz2-dev_1.0.6-r5.205_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libbz2-staticdev_1.0.6-r5.205_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/cmake-dev_2.8.12.2-r1.4_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/cmake_2.8.12.2-r1.4_cortexa9-vfpv3.ipk");
#
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libxml2-dev_2.9.2-r0.72_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libxml2-staticdev_2.9.2-r0.72_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libxml2_2.9.2-r0.72_cortexa9-vfpv3.ipk");
#
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgnutls-bin_3.3.12-r0.16_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgnutls-dev_3.3.12-r0.16_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgnutls-openssl27_3.3.12-r0.16_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgnutls28_3.3.12-r0.16_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgnutlsxx28_3.3.12-r0.16_cortexa9-vfpv3.ipk");

#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/nettle-dev_2.7.1-r0.114_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/nettle-staticdev_2.7.1-r0.114_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/nettle_2.7.1-r0.114_cortexa9-vfpv3.ipk");

#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgmp-dev_6.0.0-r0.176_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgmp-staticdev_6.0.0-r0.176_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgmp10_6.0.0-r0.176_cortexa9-vfpv3.ipk");
#install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libgmpxx4_6.0.0-r0.176_cortexa9-vfpv3.ipk");
#
#
install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libz-dev_1.2.8-r0.207_cortexa9-vfpv3.ipk");
install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libz-staticdev_1.2.8-r0.207_cortexa9-vfpv3.ipk");
install_package("http://download.ni.com/ni-linux-rt/feeds/2016/arm/ipk/cortexa9-vfpv3/libz1_1.2.8-r0.207_cortexa9-vfpv3.ipk");
